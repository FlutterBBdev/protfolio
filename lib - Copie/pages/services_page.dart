import 'package:flutter/material.dart';
import '../widgets/header.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      'Développement Web',
      'Applications Flutter',
      'UI/UX & Intégration',
      'Maintenance',
    ];
    return Scaffold(
      appBar: const Header(title: 'Services'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: services
              .map((s) => Card(child: ListTile(title: Text(s))))
              .toList(),
        ),
      ),
    );
  }
}
