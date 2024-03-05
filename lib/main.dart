// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:volante/screens/authentication/auth_or_app_screen.dart';
import 'package:volante/screens/authentication/auth_screen.dart';
import 'package:volante/screens/splash/loading_screen.dart';
import 'package:volante/screens/denuncie_aqui.dart';
import 'package:volante/screens/settings_screen.dart';
import 'package:volante/screens/splash/splash_screen.dart';
import 'package:volante/screens/test_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import './utils/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
