import 'package:flutter/material.dart';
import '../widgets/header.dart';

class TestimonialsPage extends StatelessWidget {
  const TestimonialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: 'Témoignages'),
      body: const Center(child: Text('Slider de témoignages (placeholder)')),
    );
  }
}
