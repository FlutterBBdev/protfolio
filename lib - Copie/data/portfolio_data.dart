class Experience {
  final String period;
  final String role;
  final String company;
  final String description;
  final List<String> technologies;

  const Experience({
    required this.period,
    required this.role,
    required this.company,
    required this.description,
    required this.technologies,
  });
}

class Education {
  final String period;
  final String degree;
  final String school;
  final String description;

  const Education({
    required this.period,
    required this.degree,
    required this.school,
    required this.description,
  });
}

class Project {
  final String title;
  final String description;
  final String imageUrl;
  final List<String> technologies;
  final String? githubUrl;
  final String? liveUrl;

  const Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.technologies,
    this.githubUrl,
    this.liveUrl,
  });
}

class Skill {
  final String name;
  final double level; // 0.0 to 1.0
  final String category;

  const Skill({
    required this.name,
    required this.level,
    required this.category,
  });
}

class ContactInfo {
  final String email;
  final String phone;
  final String location;
  final Map<String, String> socialLinks;

  const ContactInfo({
    required this.email,
    required this.phone,
    required this.location,
    required this.socialLinks,
  });
}

class Certification {
  final String name;
  final String issuer;
  final String date;
  final String credentialId;
  final String? credentialUrl;
  final String? imageUrl;

  const Certification({
    required this.name,
    required this.issuer,
    required this.date,
    required this.credentialId,
    this.credentialUrl,
    this.imageUrl,
  });
}

// Données prédéfinies pour le portfolio
class PortfolioData {
  static const experiences = [
    Experience(
      period: '2023 - Present',
      role: 'Senior Full Stack Developer',
      company: 'TechCorp Solutions',
      description:
          'Lead developer on multiple client projects, focusing on Flutter and React applications with Firebase backend.',
      technologies: ['Flutter', 'React', 'Firebase', 'Node.js'],
    ),
    Experience(
      period: '2021 - 2023',
      role: 'Mobile App Developer',
      company: 'InnovateMobile',
      description:
          'Developed and maintained several mobile applications using Flutter and native Android/iOS.',
      technologies: ['Flutter', 'Android', 'iOS', 'RESTful APIs'],
    ),
    Experience(
      period: '2019 - 2021',
      role: 'Frontend Developer',
      company: 'WebStack Inc',
      description:
          'Created responsive web applications using React and managed state with Redux.',
      technologies: ['React', 'Redux', 'TypeScript', 'Material-UI'],
    ),
  ];

  static const education = [
    Education(
      period: '2016 - 2019',
      degree: 'Master en Informatique',
      school: 'École Supérieure d\'Informatique',
      description:
          'Spécialisation en développement d\'applications et systèmes distribués. Formation approfondie en architecture logicielle, DevOps et méthodologies agiles.',
    ),
    Education(
      period: '2013 - 2016',
      degree: 'Licence en Informatique',
      school: 'Université de Technologies',
      description:
          'Formation fondamentale en informatique, mathématiques et algorithmes. Projets pratiques en développement web et mobile.',
    ),
    Education(
      period: '2012 - 2013',
      degree: 'DUT Informatique',
      school: 'IUT de Paris',
      description:
          'Formation technique en programmation, bases de données et réseaux. Stage de fin d\'études en développement web.',
    ),
  ];

  static const certifications = [
    Certification(
      name: 'AWS Certified Solutions Architect',
      issuer: 'Amazon Web Services',
      date: '2025',
      credentialId: 'AWS-123456',
      credentialUrl: 'https://aws.amazon.com/verification',
      imageUrl: 'assets/images/certifications/aws-architect.png',
    ),
    Certification(
      name: 'Google Associate Android Developer',
      issuer: 'Google',
      date: '2024',
      credentialId: 'GAD-987654',
      credentialUrl: 'https://developers.google.com/certification',
      imageUrl: 'assets/images/certifications/google-android.png',
    ),
    Certification(
      name: 'Flutter Certified Developer',
      issuer: 'Google',
      date: '2024',
      credentialId: 'FCD-456789',
      credentialUrl: 'https://flutter.dev/certification',
      imageUrl: 'assets/images/certifications/flutter-cert.png',
    ),
    Certification(
      name: 'Professional Scrum Master I',
      issuer: 'Scrum.org',
      date: '2023',
      credentialId: 'PSM-123789',
      credentialUrl: 'https://www.scrum.org/certificates',
      imageUrl: 'assets/images/certifications/psm1.png',
    ),
  ];

  static const projects = [
    Project(
      title: 'E-commerce Mobile App',
      description:
          'Application mobile de commerce électronique avec paiement intégré et gestion des commandes en temps réel.',
      imageUrl: 'assets/images/ecommerce.png',
      technologies: ['Flutter', 'Firebase', 'Stripe'],
      githubUrl: 'https://github.com/username/ecommerce-app',
      liveUrl: 'https://play.google.com/store/apps/details?id=com.example.app',
    ),
    Project(
      title: 'Task Management Platform',
      description:
          'Plateforme collaborative de gestion de tâches avec tableaux Kanban et reporting.',
      imageUrl: 'assets/images/taskmanager.png',
      technologies: ['React', 'Node.js', 'MongoDB'],
      githubUrl: 'https://github.com/username/task-manager',
    ),
    Project(
      title: 'Smart Home Dashboard',
      description:
          'Interface de contrôle pour maison connectée avec visualisation en temps réel.',
      imageUrl: 'assets/images/smarthome.png',
      technologies: ['Flutter', 'IoT', 'MQTT'],
      liveUrl: 'https://smarthome.example.com',
    ),
  ];

  static const skills = [
    // Frontend Development
    Skill(name: 'Flutter', level: 0.9, category: 'Frontend'),
    Skill(name: 'React', level: 0.85, category: 'Frontend'),
    Skill(name: 'HTML/CSS', level: 0.9, category: 'Frontend'),
    Skill(name: 'JavaScript', level: 0.85, category: 'Frontend'),
    Skill(name: 'TypeScript', level: 0.8, category: 'Frontend'),
    Skill(name: 'Vue.js', level: 0.75, category: 'Frontend'),
    Skill(name: 'Responsive Design', level: 0.9, category: 'Frontend'),
    Skill(name: 'Material Design', level: 0.85, category: 'Frontend'),

    // Backend Development
    Skill(name: 'Node.js', level: 0.8, category: 'Backend'),
    Skill(name: 'Python', level: 0.75, category: 'Backend'),
    Skill(name: 'Java', level: 0.7, category: 'Backend'),
    Skill(name: 'Spring Boot', level: 0.7, category: 'Backend'),
    Skill(name: 'GraphQL', level: 0.75, category: 'Backend'),
    Skill(name: 'RESTful APIs', level: 0.9, category: 'Backend'),
    Skill(name: 'Microservices', level: 0.8, category: 'Backend'),

    // Database & Cloud
    Skill(name: 'PostgreSQL', level: 0.8, category: 'Database'),
    Skill(name: 'MongoDB', level: 0.85, category: 'Database'),
    Skill(name: 'Firebase', level: 0.9, category: 'Database'),
    Skill(name: 'Redis', level: 0.7, category: 'Database'),
    Skill(name: 'AWS', level: 0.75, category: 'Cloud'),
    Skill(name: 'Google Cloud', level: 0.7, category: 'Cloud'),
    Skill(name: 'Azure', level: 0.65, category: 'Cloud'),

    // DevOps & Tools
    Skill(name: 'Git', level: 0.9, category: 'DevOps'),
    Skill(name: 'Docker', level: 0.8, category: 'DevOps'),
    Skill(name: 'Kubernetes', level: 0.7, category: 'DevOps'),
    Skill(name: 'CI/CD', level: 0.85, category: 'DevOps'),
    Skill(name: 'Jenkins', level: 0.75, category: 'DevOps'),
    Skill(name: 'Linux', level: 0.8, category: 'DevOps'),

    // Mobile Development
    Skill(name: 'Android Native', level: 0.8, category: 'Mobile'),
    Skill(name: 'iOS Development', level: 0.7, category: 'Mobile'),
    Skill(name: 'React Native', level: 0.75, category: 'Mobile'),
    Skill(name: 'Mobile UI/UX', level: 0.85, category: 'Mobile'),

    // Testing & Quality
    Skill(name: 'Unit Testing', level: 0.85, category: 'Testing'),
    Skill(name: 'Integration Testing', level: 0.8, category: 'Testing'),
    Skill(name: 'E2E Testing', level: 0.75, category: 'Testing'),
    Skill(name: 'TDD', level: 0.8, category: 'Testing'),

    // Project Management
    Skill(name: 'Scrum', level: 0.9, category: 'Management'),
    Skill(name: 'Agile', level: 0.85, category: 'Management'),
    Skill(name: 'Jira', level: 0.8, category: 'Management'),
    Skill(name: 'Team Leadership', level: 0.85, category: 'Management'),
  ];

  static const contactInfo = ContactInfo(
    email: 'contact@exemple.com',
    phone: '+33 6 12 34 56 78',
    location: 'Paris, France',
    socialLinks: {
      'LinkedIn': 'https://linkedin.com/in/username',
      'GitHub': 'https://github.com/username',
      'Twitter': 'https://twitter.com/username',
    },
  );
}
