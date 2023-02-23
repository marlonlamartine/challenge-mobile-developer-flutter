import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SpokenLanguageModel {
  final String englishName;
  final String iso6391;
  final String name;
  SpokenLanguageModel({
    required this.englishName,
    required this.iso6391,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'english_name': englishName,
      'iso_639_1': iso6391,
      'name': name,
    };
  }

  factory SpokenLanguageModel.fromMap(Map<String, dynamic> map) {
    return SpokenLanguageModel(
      englishName: map['english_name'] as String,
      iso6391: map['iso_639_1'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SpokenLanguageModel.fromJson(String source) =>
      SpokenLanguageModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
