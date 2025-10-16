import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/project_card.dart';
import '../data/mock_projects.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: 'Projets'),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1,
          ),
          itemCount: mockProjects.length,
          itemBuilder: (context, index) =>
              ProjectCard(project: mockProjects[index]),
        ),
      ),
    );
  }
}
