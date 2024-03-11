// ignore_for_file: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:volante/core/models/order_tracking_page.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:volante/screens/authentication/auth_or_app_screen.dart';
import 'package:volante/screens/authentication/auth_screen.dart';
//import 'package:volante/screens/splash/loading_screen.dart';
import 'package:volante/screens/denuncie_aqui.dart';
import 'package:volante/screens/test_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import './utils/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        scaffoldBackgroundColor: Colors.blue[200],
        // Define a cor de fundo do seu aplicativo
        appBarTheme: AppBarTheme(color: Colors.blue[500]),
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.green[100],
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
      ),
      home: const AuthOrAppScreen(),
      // home: const AuthOrAppScreen(),
      routes: {
        'denuncie-aqui': (_) => const DenuncieAqui(),
        'test-screen': (_) => const TestScreen(),
        'auth-or-app': (_) => const AuthOrAppScreen(),
        'order-tracking-page': (_) => const OrderTrackingPage(),
        // add more routes as needed
      },
    );
  }
}
