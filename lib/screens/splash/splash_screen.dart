// ignore_for_file: unused_import, unused_element, avoid_print, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
// import 'package:palmas_por_elas/screens/authentication/auth_or_app_screen.dart';
// import 'package:palmas_por_elas/utils/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'auth-or-app');
          },
          child: Image.asset(
            'assets/images/splash.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Splash'),
    //   ),
    //   floatingActionButton: FloatingActionButton(onPressed: () {
    //     Navigator.popAndPushNamed(context, 'auth-or-app');
    //   }),
    // );
  }
}
