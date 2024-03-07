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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.teal[200],
        // Define a cor de fundo do seu aplicativo
        appBarTheme: const AppBarTheme(color: Colors.amber),
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.purple,
          onPrimary: Colors.white,
          secondary: const Color.fromARGB(255, 223, 27, 12),
          onSecondary: Colors.white,
          error: Colors.red,
          background: const Color.fromARGB(255, 228, 243, 228),
          onBackground: Colors.black,
        ),
        // Define a cor dos botões
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber, foregroundColor: Colors.black),
        ),
        // Define a cor do texto
        // textTheme: TextTheme(
        //   bodyText1: TextStyle(
        //     color: Colors.black,
        //     fontFamily: GoogleFonts.roboto().fontFamily,
        //   ), // Altera a cor do texto padrão
        //   bodyText2: TextStyle(
        //     color: Colors.black,
        //     fontFamily: GoogleFonts.ubuntu().fontFamily,
        //   ),
        // ),
      ),
      home: const SplashScreen(),
      // home: const AuthOrAppScreen(),
      routes: {
        'denuncie-aqui': (_) => const DenuncieAqui(),
        'test-screen': (_) => const TestScreen(),
        'settings-screen': (_) => const SettingsScreen(),
        'auth-or-app': (_) => const AuthOrAppScreen(),
        // add more routes as needed
      },
    );
  }
}
