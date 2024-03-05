// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:volante/components/auxs/bottom_homepage_bar.dart';
import 'package:volante/components/auxs/homepage_drawer.dart';
import 'package:volante/core/services/auth/auth_mock_service.dart';
import 'package:volante/utils/app_routes.dart';

class DenuncieAqui extends StatelessWidget {
  const DenuncieAqui({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Denuncie Aqui'),
        ),
        bottomNavigationBar: BottomHomepageBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'ÁREA DE DENÚNCIAS',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  AuthMockService().logout();
                },
                child: const Text('Ir para Login'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.testes);
                },
                child: const Text(
                  'Ir para Testes',
                  style: TextStyle(),
                ),
              ),
            ],
          ),
        ),
        drawer: HomepageDrawer(),
      ),
    );
  }
}
