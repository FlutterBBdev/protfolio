## Objectif rapide

Ce fichier donne aux agents IA (Copilot / assistants) les informations minimales et spécifiques pour commencer à développer, tester et étendre ce projet Flutter "flutter_portfolio".

## Vue d'ensemble du dépôt

- Projet Flutter multi-plateforme généré par `flutter create`.
- Entrée principale : `lib/main.dart` (actuellement une app d'exemple "counter").
- Dépendances : trivial (voir `pubspec.yaml`) — pas de backend Firebase ou API externes configurées dans ce dépôt.
- Plateformes natives présentes : `android/`, `ios/`, `web/`, `windows/`, `linux/`, `macos/` (projet template Flutter).

## Ce que l'agent peut faire en priorité

1. Installer dépendances et lancer l'app localement.
2. Introduire la structure de pages du portfolio (voir section `Conventions de structure`).
3. Ajouter des écrans Flutter dans `lib/` et respecter les lints définis par `analysis_options.yaml`.
4. Exécuter l'analyse statique et les tests unitaires.

## Commandes utiles (exemples reproductibles)

Pour installer et lancer en mode debug (Windows, device connecté, ou émulateur) :

```powershell
flutter pub get
flutter run -d windows
```

Exécuter dans un navigateur (web) :

```powershell
flutter run -d chrome
```

Générer APK Android (release) :

```powershell
flutter build apk --release
# ou depuis android/: .\gradlew.bat assembleRelease
```

Analyse et format :

```powershell
flutter analyze
dart format .
```

Tests :

```powershell
flutter test
```

Hot reload rapide (terminal `flutter run`) : appuyez sur `r`. Hot restart : `R`.

## Conventions et patterns du projet (découvrables)

- Linting : `analysis_options.yaml` inclut `package:flutter_lints/flutter.yaml`. Respecter les règles activées.
- Theme et configuration globale : `lib/main.dart` montre l'utilisation de `ThemeData` et `ColorScheme.fromSeed`. Les nouveaux écrans doivent réutiliser le Theme.
- Widgets d'écran : préférer `lib/pages/` (nouveau) et `lib/widgets/` pour composants réutilisables.
- State management : aucun framework (Provider/Bloc/GetX) n'est ajouté — utiliser la solution la plus légère nécessaire et documenter l'ajout dans le PR.

Exemple de structure recommandée à créer :

```
lib/
  pages/
    home_page.dart
    about_page.dart
    skills_page.dart
    projects_page.dart
    project_details_page.dart
    contact_page.dart
  widgets/
    header.dart
    project_card.dart
  main.dart
```

## Points d'intégration et ce qui n'existe pas (à vérifier avant d'implémenter)

- Firebase / backend : aucune configuration (`google-services.json`, `GoogleService-Info.plist`) n'est présente — n'ajoute pas de code dépendant de Firebase sans inclure les fichiers de configuration et expliquer la procédure d'ajout.
- API externes (GitHub, EmailJS) : pas intégrées. Si on ajoute des appels réseau, documenter les clés/credentials et ajouter .gitignore entries si nécessaire.
- Channels natifs : recherche rapide n'a pas trouvé d'utilisation de `MethodChannel` — s'il faut du code natif, ajouter les points d'entrée dans `android/` et `ios/` et fournir code sample.

## Tests & Quality gates

- Toujours lancer `flutter analyze` puis `flutter test` avant demander une review.
- Respecter les règles de formatage (`dart format .`) pour éviter diffs bruités.

## PR message template (court) — utile pour agents qui créent PRs

Title: feat(portfolio): add <FeatureShortName>

Body (3-4 lignes):
- Contexte rapide et fichier(s) modifiés (ex: `lib/pages/projects_page.dart`, `lib/widgets/project_card.dart`).
- Commandes pour vérifier localement (`flutter run`, `flutter test`).
- Points d'attention / migrations manuelles (ex: ajouter `google-services.json` si Firebase).

## Où chercher les exemples dans ce repo

- Entrée simple et thème : `lib/main.dart` (réutiliser pattern ThemeData/ColorScheme).
- Dépendencies et metadata : `pubspec.yaml`.
- Lints : `analysis_options.yaml`.

## Notes finales (contraintes observées)

- Ce dépôt est une base template — beaucoup de fonctionnalités de portfolio listées dans la roadmap (Firebase, admin, analytics) sont *proposées* mais non implémentées. Toute implémentation d'un service externe doit inclure instructions d'ajout des fichiers natifs et de configuration (docs dans PR).

---
Si tu veux, j'adapte ce fichier en anglais, j'ajoute des snippets d'exemples (création d'un `projects_page.dart`) ou j'intègre une GitHub Action CI (analyse + tests) — dis-moi ta priorité.
