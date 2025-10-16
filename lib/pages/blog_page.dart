import 'package:flutter/material.dart';
import '../widgets/header.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: 'Blog'),
      body: const Center(
        child: Text('Liste des articles (vide pour l\'instant)'),
      ),
    );
  }
}
