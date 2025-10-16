import 'package:flutter/material.dart';
import '../widgets/navigation_scaffold.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class StatsItem extends StatelessWidget {
  final String value;
  final String label;
  final IconData icon;

  const StatsItem({
    super.key,
    required this.value,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Column(
          children: [
            Icon(icon, size: 32, color: Theme.of(context).primaryColor),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return NavigationScaffold(
      currentRoute: '/',
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.primary.withOpacity(0.1),
                Theme.of(context).colorScheme.secondary.withOpacity(0.1),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Hero Section
                Container(
                  height: screenSize.height * 0.8,
                  width: double.infinity,
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Avatar
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 3,
                          ),
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://avatars.githubusercontent.com/u/your-username',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      // Animated Text
                      DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'Bonjour, Je suis [Ton Nom]',
                              speed: const Duration(milliseconds: 100),
                            ),
                          ],
                          isRepeatingAnimation: false,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Développeur Web & Mobile Expert',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 24),
                      // Social Links
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const FaIcon(FontAwesomeIcons.github),
                            onPressed: () =>
                                _launchUrl('https://github.com/your-username'),
                          ),
                          IconButton(
                            icon: const FaIcon(FontAwesomeIcons.linkedin),
                            onPressed: () => _launchUrl(
                              'https://linkedin.com/in/your-profile',
                            ),
                          ),
                          IconButton(
                            icon: const FaIcon(FontAwesomeIcons.twitter),
                            onPressed: () =>
                                _launchUrl('https://twitter.com/your-handle'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      // CTA Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () =>
                                Navigator.pushNamed(context, '/projects'),
                            icon: const Icon(Icons.work),
                            label: const Text('Voir mes projets'),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 16,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.download),
                            label: const Text('Télécharger CV'),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Stats Section
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 48,
                    horizontal: 32,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'En quelques chiffres',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          StatsItem(
                            value: '5+',
                            label: "Années\nd'expérience",
                            icon: Icons.timeline,
                          ),
                          StatsItem(
                            value: '50+',
                            label: 'Projets\nterminés',
                            icon: Icons.done_all,
                          ),
                          StatsItem(
                            value: '20+',
                            label: 'Technologies\nmaîtrisées',
                            icon: Icons.code,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => Navigator.pushNamed(context, '/contact'),
          label: const Text('Me contacter'),
          icon: const Icon(Icons.mail),
        ),
      ),
    );
  }
}
