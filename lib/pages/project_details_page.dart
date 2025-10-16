import 'package:flutter/material.dart';
import '../models/project.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Object? project;

  const ProjectDetailsPage({super.key, this.project});

  @override
  Widget build(BuildContext context) {
    final p = project as Project?;
    if (p == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Project')),
        body: const Center(child: Text('No project provided')),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(p.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(p.title, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(p.description),
            const SizedBox(height: 8),
            Text('Technologies: ${p.tech.join(', ')}'),
            const SizedBox(height: 16),
            Row(
              children: [
                if (p.repoUrl != null)
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Code source'),
                  ),
                const SizedBox(width: 8),
                if (p.demoUrl != null)
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Visiter la démo'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
