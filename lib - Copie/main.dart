import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/skills_page.dart';
import 'pages/projects_page.dart';
import 'pages/project_details_page.dart';
import 'pages/services_page.dart';
import 'pages/blog_page.dart';
import 'pages/testimonials_page.dart';
import 'pages/contact_page.dart';
import 'pages/admin_page.dart';
import 'pages/certifications_page.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/skills': (context) => const SkillsPage(),
        '/projects': (context) => const ProjectsPage(),
        '/services': (context) => const ServicesPage(),
        '/blog': (context) => const BlogPage(),
        '/testimonials': (context) => const TestimonialsPage(),
        '/contact': (context) => const ContactPage(),
        '/admin': (context) => const AdminPage(),
        '/certifications': (context) => const CertificationsPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/project') {
          final args = settings.arguments;
          return MaterialPageRoute(
            builder: (context) => ProjectDetailsPage(project: args),
          );
        }
        return null;
      },
    );
  }
}
