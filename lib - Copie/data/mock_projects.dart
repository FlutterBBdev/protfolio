import '../models/project.dart';

final List<Project> mockProjects = [
  Project(
    id: 'p1',
    title: 'Awesome App',
    description: 'A cross-platform app built with Flutter showcasing features.',
    tech: ['Flutter', 'Dart', 'Firebase'],
    image: 'assets/placeholder.png',
    repoUrl: 'https://github.com/example/awesome-app',
    demoUrl: null,
  ),
  Project(
    id: 'p2',
    title: 'Portfolio Website',
    description: 'A responsive portfolio built with React and Tailwind.',
    tech: ['React', 'Tailwind', 'Netlify'],
    image: 'assets/placeholder.png',
    repoUrl: 'https://github.com/example/portfolio',
    demoUrl: 'https://example.com',
  ),
];
