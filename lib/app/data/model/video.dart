import 'package:meta/meta.dart' show required;

class Video {
  final String title, description, url;

  Video({
    @required this.title,
    @required this.description,
    @required this.url,
  });

  static Video fromJson(Map<String, dynamic> json) {
    return Video(
      title: json['title'],
      description: json['description'],
      url: (json['sources'] as List)[0],
    );
  }
}
