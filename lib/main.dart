import 'package:flutter/material.dart';
import 'package:refapp/app/app.dart';
import 'package:refapp/boot/boot.dart';

Future<void> main() async {
  await bootApp();
  runApp(const App());
}
