# Refapp

A Flutter product catalog. Sign in, then browse a paginated product list and open a product. The API is [DummyJSON](https://dummyjson.com).

## Requirements

- [FVM](https://fvm.app)
- Flutter `3.44.0` (pinned in `.fvmrc`)
- Dart SDK `^3.12.0`

## Setup

```bash
fvm install
fvm flutter pub get
```

Environments are compile-time. `.env.dev`, `.env.staging`, and `.env.prod` supply `ENV`, `API_BASE_URL`, and `APP_NAME`. All three point at `https://dummyjson.com`. `ENV` must be `dev`, `staging`, or `prod`. `Env` in `lib/boot/env.dart` throws if the define is missing.

Launch from VS Code with the `dev`, `staging`, or `prod` configuration in `.vscode/launch.json`, or from the terminal:

```bash
fvm flutter run -t lib/main_dev.dart --dart-define-from-file=.env.dev
```

Swap the target and env file for staging (`lib/main_staging.dart`, `.env.staging`) or prod (`lib/main_prod.dart`, `.env.prod`).

Each env entrypoint constructs `Env()` first. `lib/main.dart` then calls `bootApp()` and `runApp`.

The login form is filled with DummyJSON’s public demo user `emilys` / `emilyspass`.

## Architecture

The app is split into a shell and features. The shell (`lib/boot`, `lib/app`) owns boot, dependency injection, routing, theme, storage, and HTTP. Each feature (`auth`, `products`) owns four layers:

- **domain** — entities, value objects, and the repository interface. It depends only on the shared primitives in `lib/app/shared` (`Result`, `Option`, `ValueObject`).
- **application** — Cubits and view models. A Cubit talks to the repository interface. The UI reads view models, which unwrap value objects into `String` and `int`.
- **infrastructure** — the DummyJSON client, DTOs, and Hive. This is the only layer that knows Dio and Hive.
- **presentation** — routes and widgets. A route creates its Cubit. The widget maps the Cubit state.

`auth` signs in with `POST /auth/login` and keeps the JWT in secure storage. `products` fetches a page, writes it to Hive, and rebuilds the list from that cache. Product detail reads the same cache.

### Why this shape

A screen should be able to change without rewriting the API, and the API should be able to change without rewriting the screen. The repository interface is the boundary: `LoginCubit` and `ProductCollectionCubit` depend on `IAuthRepository` and `IProductsRepository`. `AuthRepositoryProd` and `ProductRepositoryProd` are the DummyJSON and Hive implementations behind those interfaces.

Domain stays free of Flutter, Dio, and Hive so the rules (a username is required, a product page is a list plus a total) can be stated without a widget or a network call. Expected failures come back as `Result`, so a bad password and an empty catalog are states the UI can draw.

Features stay separate for the same reason. Auth and products share the shell (token, HTTP client, router) and nothing else. Adding a feature means adding another slice with the same four layers, wired through the same shell.

This is more structure than a two-screen catalog needs. The layers, the shell, and the generated wiring are overhead for login plus a product list. They are here so the next feature is another slice on the same shell, using the same Cubit, get_it, and freezed patterns.

### Environments

`dev`, `staging`, and `prod` are separate compile-time environments: each has an entrypoint, an env file, and a launch config, and `configureInjection` receives that environment name. A deployed app can point each file at its own API and register a different repository for each one.

This repo is a showcase, so that split stops at the wiring. All three env files use DummyJSON, and the same auth and product implementations are registered for `dev`, `staging`, and `prod`.

### Why Bloc

`flutter_bloc` Cubits hold UI state. A Cubit is a method API (`load`, `usernameChanged`, `login`) plus one immutable state object. The widget rebuilds with `BlocBuilder` and reacts once with `BlocListener`.

That fits this app because every screen is a small state machine. Login is `editing`, `submitting`, `success`, or `failed`. The product list is `loading`, `loaded`, `empty`, or `failed`. The splash waits on `AppCubit` until boot is `loaded`. Named states make those branches explicit: adding a state means updating each `state.map`, so a screen cannot forget a case.

Cubits are scoped to match how long the state should live. `AppCubit` and `AuthCubit` sit on `App` for the whole session, and `AuthCubit` drives the router redirect. `ProductCollectionCubit` is created with the signed-in shell and loads immediately. `LoginCubit` and `ProductCubit` are created on their routes and disposed with them.

### Why get_it

Cubits receive their repository through the constructor. Widgets ask `get_it` for a Cubit and never for a repository or a Dio client. That keeps construction in one place: `lib/app/di`.

`injectable` generates the registrations and encodes the lifetimes. A Cubit is a new instance on each resolve, so a route gets a fresh form. `HttpClient`, the token service, and the repositories are lazy singletons, so the signed-in app shares one cache and one HTTP client. Repositories are registered `as` their interface for `dev`, `staging`, and `prod`, which is the same environment string `Env` passes into `configureInjection`. Swapping an implementation means registering another class against the same interface.

### Why freezed

States, entities, `Result`, and `Option` are sealed unions. `freezed` generates the constructors, equality, and `copyWith`, and `state.map` is exhaustive.

Equality matters because a Cubit emits a new value and Bloc rebuilds when that value changes. `copyWith` matters on the login form: `usernameChanged` replaces one field and keeps the rest. Exhaustiveness matters on the UI: a new variant, such as `empty` on the product list, is a compile error until the view handles it. The same pattern is used for repository events (`loaded`, `empty`, `notLoaded`, `unexpected`) and for failures, so the application layer can switch on outcomes the way the widget switches on screen state.
