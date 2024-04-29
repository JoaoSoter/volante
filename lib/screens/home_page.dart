// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:volante/core/services/auth/auth_firebase_service.dart';
import 'package:volante/utils/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Homepage'),
          actions: [
            IconButton(
              onPressed: () {
                AuthFirebaseService().logout();
              },
              icon: Icon(Icons.logout),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/motossom.jpg',
                  fit: BoxFit.cover,
                ),
                ElevatedButton(
                  style: ButtonStyle(alignment: Alignment.center),
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.map);
                  },
                  child: Text('Começar!'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}