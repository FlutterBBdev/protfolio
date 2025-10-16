import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/header.dart';

class SkillCategory extends StatelessWidget {
  final String title;
  final List<String> skills;
  final IconData icon;

  const SkillCategory({
    super.key,
    required this.title,
    required this.skills,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 8),
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: skills
              .map(
                (skill) => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.secondaryContainer.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    skill,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class EducationItem extends StatelessWidget {
  final String period;
  final String degree;
  final String school;
  final String description;

  const EducationItem({
    super.key,
    required this.period,
    required this.degree,
    required this.school,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  period,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Icon(
                  Icons.school,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              degree,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              school,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const SizedBox(height: 8),
            Text(description),
          ],
        ),
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String period;
  final String role;
  final String company;
  final String description;
  final List<String> technologies;

  const ExperienceItem({
    super.key,
    required this.period,
    required this.role,
    required this.company,
    required this.description,
    required this.technologies,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  period,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Icon(Icons.work, color: Theme.of(context).colorScheme.primary),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              role,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              company,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const SizedBox(height: 8),
            Text(description),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: technologies
                  .map(
                    (tech) => Chip(
                      label: Text(tech),
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.primaryContainer.withOpacity(0.3),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final experiences = [
      ExperienceItem(
        period: '2023 - Present',
        role: 'Senior Full Stack Developer',
        company: 'TechCorp Solutions',
        description:
            'Lead developer on multiple client projects, focusing on Flutter and React applications with Firebase backend.',
        technologies: ['Flutter', 'React', 'Firebase', 'Node.js'],
      ),
      ExperienceItem(
        period: '2021 - 2023',
        role: 'Mobile App Developer',
        company: 'InnovateMobile',
        description:
            'Developed and maintained several mobile applications using Flutter and native Android/iOS.',
        technologies: ['Flutter', 'Android', 'iOS', 'RESTful APIs'],
      ),
      ExperienceItem(
        period: '2019 - 2021',
        role: 'Frontend Developer',
        company: 'WebStack Inc',
        description:
            'Created responsive web applications using React and managed state with Redux.',
        technologies: ['React', 'Redux', 'TypeScript', 'Material-UI'],
      ),
    ];

    final skills = [
      SkillCategory(
        title: 'Technologies Front-end',
        icon: Icons.web,
        skills: [
          'Flutter',
          'React',
          'Vue.js',
          'HTML5',
          'CSS3',
          'JavaScript',
          'TypeScript',
        ],
      ),
      SkillCategory(
        title: 'Technologies Back-end',
        icon: Icons.storage,
        skills: [
          'Node.js',
          'Python',
          'Java',
          'Spring Boot',
          'RESTful APIs',
          'GraphQL',
        ],
      ),
      SkillCategory(
        title: 'Base de données & Cloud',
        icon: Icons.cloud,
        skills: [
          'PostgreSQL',
          'MongoDB',
          'Firebase',
          'AWS',
          'Docker',
          'Kubernetes',
        ],
      ),
    ];

    final education = [
      EducationItem(
        period: '2016 - 2019',
        degree: 'Master en Informatique',
        school: 'École Supérieure d\'Informatique',
        description:
            'Spécialisation en développement d\'applications et systèmes distribués.',
      ),
      EducationItem(
        period: '2013 - 2016',
        degree: 'Licence en Informatique',
        school: 'Université de Technologies',
        description: 'Formation fondamentale en informatique et mathématiques.',
      ),
    ];

    return Scaffold(
      appBar: const Header(title: 'À propos'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
                  tag: 'profile',
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.primaryContainer,
                    child: const Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                )
                .animate(onPlay: (controller) => controller.repeat())
                .shimmer(duration: 2000.ms, color: Colors.white54)
                .animate()
                .scale(duration: 800.ms, curve: Curves.elasticOut),
            const SizedBox(height: 24),
            Text(
              'Mon Parcours',
              style: Theme.of(context).textTheme.headlineMedium,
            ).animate().fadeIn(duration: 600.ms).slideX(begin: -0.2, end: 0),
            const SizedBox(height: 8),
            Text(
              'Passionné par le développement d\'applications, je crée des solutions innovantes qui combinent performance et expérience utilisateur exceptionnelle.',
              style: Theme.of(context).textTheme.bodyLarge,
            ).animate().fadeIn(delay: 400.ms).slideX(begin: 0.2, end: 0),
            const SizedBox(height: 32),
            const Divider().animate().fadeIn(delay: 500.ms),
            const SizedBox(height: 32),
            Text(
              'Compétences',
              style: Theme.of(context).textTheme.titleLarge,
            ).animate().fadeIn(delay: 600.ms),
            const SizedBox(height: 24),
            ...skills.asMap().entries.map(
              (entry) => Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: entry.value
                    .animate(delay: (700 + entry.key * 200).ms)
                    .fadeIn()
                    .slideX(begin: entry.key.isEven ? -0.2 : 0.2, end: 0),
              ),
            ),
            const SizedBox(height: 16),
            const Divider().animate().fadeIn(delay: 1300.ms),
            const SizedBox(height: 32),
            Text(
              'Expérience Professionnelle',
              style: Theme.of(context).textTheme.titleLarge,
            ).animate().fadeIn(delay: 1400.ms),
            const SizedBox(height: 24),
            ...experiences.asMap().entries.map(
              (entry) => entry.value
                  .animate(delay: (1500 + entry.key * 200).ms)
                  .fadeIn()
                  .slideY(begin: 0.2, end: 0),
            ),
            const SizedBox(height: 32),
            const Divider().animate().fadeIn(delay: 2100.ms),
            const SizedBox(height: 32),
            Text(
              'Formation',
              style: Theme.of(context).textTheme.titleLarge,
            ).animate().fadeIn(delay: 2200.ms),
            const SizedBox(height: 24),
            ...education.asMap().entries.map(
              (entry) => entry.value
                  .animate(delay: (2300 + entry.key * 200).ms)
                  .fadeIn()
                  .slideY(begin: 0.2, end: 0),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.download),
                  label: const Text('Télécharger mon CV complet'),
                ).animate().fadeIn(delay: 2700.ms).slideY(begin: 0.2, end: 0),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
