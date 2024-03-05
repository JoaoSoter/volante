// ignore_for_file: prefer_const_constructors, unused_import, override_on_non_overriding_member

import 'package:flutter/material.dart';
import '../../utils/app_routes.dart';

class HomepageDrawer extends StatelessWidget {
  const HomepageDrawer({super.key});

  Widget _createItem(IconData icon, String label, Function() onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 90,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.secondary,
            alignment: Alignment.bottomLeft,
            child: Text(
              'PALMAS POR ELAS',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _createItem(Icons.home_filled, 'HomePage',
              () => Navigator.of(context).popAndPushNamed('denuncie-aqui')),
          _createItem(Icons.settings, 'Configurações',
              () => Navigator.of(context).popAndPushNamed('settings-screen')),
          _createItem(Icons.table_view_rounded, 'Tabelas',
              () => Navigator.of(context).popAndPushNamed('test-screen'))
        ],
      ),
    );
  }
}
