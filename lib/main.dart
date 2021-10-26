import "package:flutter/material.dart";
import 'package:flutter_modular/flutter_modular.dart';
import 'package:packs_flutter/AppModule.dart';
import 'package:packs_flutter/AppWidget.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
