class Plant {
  final String name;
  final String role;
  final String description;
  final String imageUrl;
  final String gifURL;

  const Plant({
    required this.name,
    required this.role,
    required this.description,
    required this.imageUrl,
    String? gifURL,
  }) : gifURL = gifURL ?? imageUrl;

  @override
  String toString() {
    return 'Character(name: $name, role: $role, description: $description, imageUrl: $imageUrl, gifURL: $gifURL)';
  }
}

class Zombie {
  final String name;
  final String threat;
  final String description;
  final String imageUrl;
  final String gifURL;

  const Zombie({
    required this.name,
    required this.threat,
    required this.description,
    required this.imageUrl,
    String? gifURL,
  }) : gifURL = gifURL ?? imageUrl;

  @override
  String toString() {
    return 'Character(name: $name, threat: $threat, role: $description, imageUrl: $imageUrl)';
  }
}

class StrategyTip {
  final String title;
  final String summary;
  final String description;
  final String imageUrl;

  const StrategyTip({
    required this.title,
    required this.summary,
    required this.description,
    required this.imageUrl,
  });

  @override
  String toString() {
    return 'Character(name: $title, summary: $summary, role: $description, imageUrl: $imageUrl)';
  }
}
