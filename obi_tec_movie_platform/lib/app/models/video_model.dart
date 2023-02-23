import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class VideoModel {
  final String iso6391;
  final String iso31661;
  final String name;
  final String key;
  final String site;
  final int size;
  final String type;
  final bool official;
  final String publishedAt;
  final String id;
  VideoModel({
    required this.iso6391,
    required this.iso31661,
    required this.name,
    required this.key,
    required this.site,
    required this.size,
    required this.type,
    required this.official,
    required this.publishedAt,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iso_639_1': iso6391,
      'iso_3166_1': iso31661,
      'name': name,
      'key': key,
      'site': site,
      'size': size,
      'type': type,
      'official': official,
      'published_at': publishedAt,
      'id': id,
    };
  }

  factory VideoModel.fromMap(Map<String, dynamic> map) {
    return VideoModel(
      iso6391: map['iso_639_1'] as String,
      iso31661: map['iso_3166_1'] as String,
      name: map['name'] as String,
      key: map['key'] as String,
      site: map['site'] as String,
      size: map['size'] as int,
      type: map['type'] as String,
      official: map['official'] as bool,
      publishedAt: map['published_at'] as String,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoModel.fromJson(String source) =>
      VideoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
