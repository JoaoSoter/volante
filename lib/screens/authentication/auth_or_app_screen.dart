import 'package:volante/core/models/usuario.dart';
import 'package:volante/core/services/auth/auth_service.dart';
import 'package:volante/screens/authentication/auth_screen.dart';
import 'package:volante/screens/denuncie_aqui.dart';
import 'package:volante/screens/splash/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthOrAppPage extends StatelessWidget {
  const AuthOrAppPage({super.key});

  Future<void> init(BuildContext context) async {
    await Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: init(context),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else {
          return StreamBuilder<Usuario?>(
            stream: AuthService().userChanges,
            builder: (ctx, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const LoadingScreen();
              } else {
                return snapshot.hasData
                    ? const DenuncieAqui()
                    : const AuthScreen();
              }
            },
          );
        }
      },
    );
  }
}
