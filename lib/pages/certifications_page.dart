import 'package:flutter/material.dart';
import '../widgets/navigation_scaffold.dart';

class Certification {
  final String title;
  final String issuer;
  final String date;
  final String? credentialUrl;
  final String? description;
  final String? imageUrl;
  final List<String> skills;

  const Certification({
    required this.title,
    required this.issuer,
    required this.date,
    this.credentialUrl,
    this.description,
    this.imageUrl,
    this.skills = const [],
  });
}

class CertificationCard extends StatelessWidget {
  final Certification certification;
  final bool isExpanded;

  const CertificationCard({
    super.key,
    required this.certification,
    this.isExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              certification.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            subtitle: Text('${certification.issuer} • ${certification.date}'),
            trailing: certification.credentialUrl != null
                ? IconButton(
                    icon: const Icon(Icons.verified),
                    onPressed: () {
                      // TODO: Implement credential verification
                    },
                  )
                : null,
          ),
          if (isExpanded && certification.description != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    certification.description!,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  if (certification.skills.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: certification.skills
                          .map((skill) => Chip(label: Text(skill)))
                          .toList(),
                    ),
                  ],
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class CertificationsPage extends StatelessWidget {
  const CertificationsPage({super.key});

  final List<Certification> certifications = const [
    Certification(
      title: 'Flutter Development Bootcamp',
      issuer: 'Udemy',
      date: '2024',
      description:
          'Formation complète sur le développement d\'applications mobiles avec Flutter, '
          'incluant Material Design, state management, et intégration Firebase.',
      skills: ['Flutter', 'Dart', 'Firebase', 'State Management', 'APIs'],
    ),
    Certification(
      title: 'React Development',
      issuer: 'freeCodeCamp',
      date: '2023',
      description:
          'Certification en développement front-end avec React, '
          'couvrant les hooks, Redux, et les bonnes pratiques.',
      skills: ['React', 'JavaScript', 'Redux', 'REST APIs'],
    ),
    Certification(
      title: 'AWS Cloud Practitioner',
      issuer: 'Amazon Web Services',
      date: '2023',
      description:
          'Certification fondamentale AWS couvrant les services cloud essentiels.',
      skills: ['AWS', 'Cloud Computing', 'DevOps'],
      credentialUrl: 'https://aws.amazon.com/verification',
    ),
    Certification(
      title: 'Professional Scrum Master I',
      issuer: 'Scrum.org',
      date: '2023',
      description:
          'Certification attestant la maîtrise des principes Scrum et Agile.',
      skills: ['Agile', 'Scrum', 'Project Management'],
      credentialUrl: 'https://www.scrum.org/certificates',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationScaffold(
      currentRoute: '/certifications',
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final crossAxisCount = width > 1200
              ? 3
              : width > 800
              ? 2
              : 1;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Text(
                    'Mes Certifications',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    // Use aspect ratio so height adapts to width and content
                    childAspectRatio: (width / crossAxisCount) / 220,
                  ),
                  itemCount: certifications.length,
                  itemBuilder: (context, index) {
                    return CertificationCard(
                      certification: certifications[index],
                      isExpanded: true,
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
