import 'package:refapp/boot/env.dart';

import 'main.dart' as app;

Future<void> main() async {
  Env();
  await app.main();
}
