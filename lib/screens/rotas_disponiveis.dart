// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:volante/core/models/lista_rotas.dart';

class RotasDisponiveis extends StatefulWidget {
  const RotasDisponiveis({super.key});

  @override
  State<RotasDisponiveis> createState() => _RotasDisponiveisState();
}

class _RotasDisponiveisState extends State<RotasDisponiveis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rotas'),
      ),
      body: ListaRotas(),
    );
  }
}
