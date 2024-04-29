// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:volante/core/models/usuario.dart';
import 'package:volante/core/services/auth/auth_service.dart';
import 'package:volante/screens/authentication/auth_screen.dart';
import 'package:volante/screens/home_page.dart';
import 'package:volante/screens/splash/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthOrAppScreen extends StatelessWidget {
  const AuthOrAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder(
    //   future: init(context),
    //   builder: (ctx, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return const LoadingScreen();
    //     } else {
    return StreamBuilder<Usuario?>(
      stream: AuthService().userChanges,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else {
          return snapshot.hasData ? const HomePage() : const AuthScreen();
        }
      },
    );
  }
}
//     );
//   }
// }
