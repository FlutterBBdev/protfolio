import 'package:flutter/material.dart';
import '../widgets/navigation_scaffold.dart';

class SkillCategory {
  final String name;
  final IconData icon;
  final List<Skill> skills;

  const SkillCategory({
    required this.name,
    required this.icon,
    required this.skills,
  });
}

class Skill {
  final String name;
  final double level; // 0.0 to 1.0
  final String? description;

  const Skill({required this.name, required this.level, this.description});
}

class SkillsPage extends StatelessWidget {
  final List<SkillCategory> categories = const [
    SkillCategory(
      name: 'Développement Mobile',
      icon: Icons.mobile_friendly,
      skills: [
        Skill(
          name: 'Flutter',
          level: 0.9,
          description: 'Développement cross-platform',
        ),
        Skill(name: 'Dart', level: 0.85),
        Skill(name: 'React Native', level: 0.7),
        Skill(name: 'Android (Kotlin)', level: 0.6),
      ],
    ),
    SkillCategory(
      name: 'Développement Web',
      icon: Icons.web,
      skills: [
        Skill(name: 'React', level: 0.8),
        Skill(name: 'Node.js', level: 0.75),
        Skill(name: 'HTML/CSS', level: 0.9),
        Skill(name: 'JavaScript', level: 0.85),
      ],
    ),
    SkillCategory(
      name: 'Backend & Base de données',
      icon: Icons.storage,
      skills: [
        Skill(name: 'Firebase', level: 0.8),
        Skill(name: 'MongoDB', level: 0.7),
        Skill(name: 'SQL', level: 0.75),
        Skill(name: 'Express.js', level: 0.7),
      ],
    ),
    SkillCategory(
      name: 'Outils & Méthodologies',
      icon: Icons.build,
      skills: [
        Skill(name: 'Git', level: 0.85),
        Skill(name: 'Docker', level: 0.6),
        Skill(name: 'Agile/Scrum', level: 0.8),
        Skill(name: 'CI/CD', level: 0.7),
      ],
    ),
  ];

  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 1200
        ? 4
        : screenWidth > 800
        ? 3
        : screenWidth > 600
        ? 2
        : 1;

    return NavigationScaffold(
      currentRoute: '/skills',
      child: Scaffold(
        appBar: AppBar(title: const Text('Compétences')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mes Compétences',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'Découvrez mes compétences techniques et professionnelles',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 24),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  childAspectRatio: 1,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(category.icon, size: 24),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  category.name,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          Expanded(
                            child: ListView.builder(
                              itemCount: category.skills.length,
                              itemBuilder: (context, skillIndex) {
                                final skill = category.skills[skillIndex];
                                return Tooltip(
                                  message: skill.description ?? skill.name,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(skill.name),
                                      const SizedBox(height: 4),
                                      LinearProgressIndicator(
                                        value: skill.level,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      const SizedBox(height: 8),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
