import 'package:choicemylunchplace/app/app_module.dart';
import 'package:choicemylunchplace/app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dart:developer' as developer;

void main() {
  Modular.to.addListener(() {
    developer.log('PATH: ${Modular.to.path}', name: 'NAVIGATION');
  });
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
