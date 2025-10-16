class Project {
  final String id;
  final String title;
  final String description;
  final List<String> tech;
  final String image;
  final String? repoUrl;
  final String? demoUrl;

  Project({
    required this.id,
    required this.title,
    required this.description,
    required this.tech,
    required this.image,
    this.repoUrl,
    this.demoUrl,
  });
}
