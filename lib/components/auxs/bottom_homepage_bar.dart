import 'package:flutter/material.dart';

class BottomHomepageBar extends StatelessWidget {
  const BottomHomepageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // onTap: _selectScreen,
      backgroundColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Colors.white,
      selectedItemColor: Theme.of(context).colorScheme.secondary,
      // currentIndex: _selectedScreenIndex,
      type: BottomNavigationBarType.shifting,
      items: [
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.school),
            label: 'Cadastro de Curso'),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.star),
            label: 'Cursos Online'),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.star),
            label: 'Vagas Empregos'),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.star),
            label: 'Passe Livre'),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.group),
            label: 'Sobre'),
      ],
    );
  }
}
