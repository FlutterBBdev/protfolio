import 'package:flutter/material.dart';

class NavigationItem {
  final String label;
  final IconData icon;
  final String route;

  const NavigationItem({
    required this.label,
    required this.icon,
    required this.route,
  });
}

class NavigationScaffold extends StatelessWidget {
  static const List<NavigationItem> destinations = [
    NavigationItem(label: 'Accueil', icon: Icons.home, route: '/'),
    NavigationItem(label: 'À propos', icon: Icons.person, route: '/about'),
    NavigationItem(
      label: 'Compétences',
      icon: Icons.psychology,
      route: '/skills',
    ),
    NavigationItem(
      label: 'Certifications',
      icon: Icons.verified,
      route: '/certifications',
    ),
    NavigationItem(label: 'Projets', icon: Icons.work, route: '/projects'),
    NavigationItem(
      label: 'Services',
      icon: Icons.design_services,
      route: '/services',
    ),
    NavigationItem(label: 'Blog', icon: Icons.article, route: '/blog'),
    NavigationItem(
      label: 'Témoignages',
      icon: Icons.format_quote,
      route: '/testimonials',
    ),
    NavigationItem(label: 'Contact', icon: Icons.mail, route: '/contact'),
  ];

  final Widget child;
  final String currentRoute;

  const NavigationScaffold({
    super.key,
    required this.child,
    required this.currentRoute,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth >= 1024;
    final isTablet = screenWidth >= 768 && screenWidth < 1024;
    final isMobile = screenWidth < 768;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
        centerTitle: true,
        actions: isDesktop
            ? [
                for (var item in destinations)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: TextButton.icon(
                      icon: Icon(item.icon, size: 20),
                      label: Text(item.label),
                      onPressed: () {
                        if (item.route != currentRoute) {
                          Navigator.pushNamed(context, item.route);
                        }
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: item.route == currentRoute
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
              ]
            : null,
      ),
      body: child,
      bottomNavigationBar: !isDesktop
          ? NavigationBar(
              height: isTablet ? 70 : 60,
              labelBehavior: isTablet
                  ? NavigationDestinationLabelBehavior.alwaysShow
                  : NavigationDestinationLabelBehavior.onlyShowSelected,
              destinations: destinations
                  .map(
                    (d) => NavigationDestination(
                      icon: Icon(d.icon),
                      label: d.label,
                    ),
                  )
                  .toList(),
              selectedIndex: destinations.indexWhere(
                (d) => d.route == currentRoute,
              ),
              onDestinationSelected: (index) {
                if (destinations[index].route != currentRoute) {
                  Navigator.pushNamed(context, destinations[index].route);
                }
              },
            )
          : null,
    );
  }
}
