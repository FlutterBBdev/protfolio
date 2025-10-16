import 'package:flutter/material.dart';
import '../widgets/header.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: 'Admin'),
      body: const Center(child: Text('Tableau de bord admin (mock)')),
    );
  }
}
