// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState()';
}


}

/// @nodoc
class $AppStateCopyWith<$Res>  {
$AppStateCopyWith(AppState _, $Res Function(AppState) __);
}


/// Adds pattern-matching-related methods to [AppState].
extension AppStatePatterns on AppState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AppInitial value)?  initial,TResult Function( AppLoading value)?  loading,TResult Function( AppLoaded value)?  loaded,TResult Function( AppFailed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AppInitial() when initial != null:
return initial(_that);case AppLoading() when loading != null:
return loading(_that);case AppLoaded() when loaded != null:
return loaded(_that);case AppFailed() when failed != null:
return failed(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AppInitial value)  initial,required TResult Function( AppLoading value)  loading,required TResult Function( AppLoaded value)  loaded,required TResult Function( AppFailed value)  failed,}){
final _that = this;
switch (_that) {
case AppInitial():
return initial(_that);case AppLoading():
return loading(_that);case AppLoaded():
return loaded(_that);case AppFailed():
return failed(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AppInitial value)?  initial,TResult? Function( AppLoading value)?  loading,TResult? Function( AppLoaded value)?  loaded,TResult? Function( AppFailed value)?  failed,}){
final _that = this;
switch (_that) {
case AppInitial() when initial != null:
return initial(_that);case AppLoading() when loading != null:
return loading(_that);case AppLoaded() when loaded != null:
return loaded(_that);case AppFailed() when failed != null:
return failed(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AppThemeMode themeMode)?  loaded,TResult Function( String message)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AppInitial() when initial != null:
return initial();case AppLoading() when loading != null:
return loading();case AppLoaded() when loaded != null:
return loaded(_that.themeMode);case AppFailed() when failed != null:
return failed(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AppThemeMode themeMode)  loaded,required TResult Function( String message)  failed,}) {final _that = this;
switch (_that) {
case AppInitial():
return initial();case AppLoading():
return loading();case AppLoaded():
return loaded(_that.themeMode);case AppFailed():
return failed(_that.message);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AppThemeMode themeMode)?  loaded,TResult? Function( String message)?  failed,}) {final _that = this;
switch (_that) {
case AppInitial() when initial != null:
return initial();case AppLoading() when loading != null:
return loading();case AppLoaded() when loaded != null:
return loaded(_that.themeMode);case AppFailed() when failed != null:
return failed(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class AppInitial implements AppState {
  const AppInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState.initial()';
}


}




/// @nodoc


class AppLoading implements AppState {
  const AppLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState.loading()';
}


}




/// @nodoc


class AppLoaded implements AppState {
  const AppLoaded({required this.themeMode});
  

 final  AppThemeMode themeMode;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppLoadedCopyWith<AppLoaded> get copyWith => _$AppLoadedCopyWithImpl<AppLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppLoaded&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'AppState.loaded(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class $AppLoadedCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppLoadedCopyWith(AppLoaded value, $Res Function(AppLoaded) _then) = _$AppLoadedCopyWithImpl;
@useResult
$Res call({
 AppThemeMode themeMode
});


$AppThemeModeCopyWith<$Res> get themeMode;

}
/// @nodoc
class _$AppLoadedCopyWithImpl<$Res>
    implements $AppLoadedCopyWith<$Res> {
  _$AppLoadedCopyWithImpl(this._self, this._then);

  final AppLoaded _self;
  final $Res Function(AppLoaded) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? themeMode = null,}) {
  return _then(AppLoaded(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as AppThemeMode,
  ));
}

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppThemeModeCopyWith<$Res> get themeMode {
  
  return $AppThemeModeCopyWith<$Res>(_self.themeMode, (value) {
    return _then(_self.copyWith(themeMode: value));
  });
}
}

/// @nodoc


class AppFailed implements AppState {
  const AppFailed({required this.message});
  

 final  String message;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppFailedCopyWith<AppFailed> get copyWith => _$AppFailedCopyWithImpl<AppFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppFailed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $AppFailedCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppFailedCopyWith(AppFailed value, $Res Function(AppFailed) _then) = _$AppFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AppFailedCopyWithImpl<$Res>
    implements $AppFailedCopyWith<$Res> {
  _$AppFailedCopyWithImpl(this._self, this._then);

  final AppFailed _self;
  final $Res Function(AppFailed) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AppFailed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
