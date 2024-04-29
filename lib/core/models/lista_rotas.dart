// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:volante/utils/app_routes.dart';

class ListaRotas extends StatefulWidget {
  const ListaRotas({super.key});

  @override
  State<ListaRotas> createState() => _ListaRotasState();
}

class _ListaRotasState extends State<ListaRotas> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ListTile(
        title: Text('Rota 1'),
        subtitle: Text('Rua Sexta -> Avenida Tavares Bastos'),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.of(context).pushNamed(AppRoutes.map);
        },
      ),
      ListTile(
        title: Text('Rota 2'),
        subtitle: Text('Avenida Tavares Bastos -> Rua Sexta'),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.of(context).pushNamed(AppRoutes.map);
        },
      ),
    ]);
  }
}
