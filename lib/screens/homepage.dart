// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:volante/components/auxs/bottom_homepage_bar.dart';
import 'package:volante/components/auxs/homepage_drawer.dart';
import 'package:volante/core/services/auth/auth_firebase_service.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Theme'),
            ElevatedButton(
              onPressed: () {
                AuthFirebaseService().logout();
              },
              child: const Text('Ir para Login'),
            ),
          ],
        ),
      ),
      drawer: HomepageDrawer(),
      bottomNavigationBar: BottomHomepageBar(),
    );
  }
}
