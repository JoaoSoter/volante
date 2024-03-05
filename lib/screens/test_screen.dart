// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabela 3x3'),
      ),
      body: Column(
        children: [
          Center(
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                        child: Text('A1'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('B1'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('C1'),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                        child: Text('A2'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('B2'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('C2'),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                        child: Text('A3'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('B3'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('C3'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Voltar para Denuncie Aqui?'),
          ),
        ],
      ),
    );
  }
}
