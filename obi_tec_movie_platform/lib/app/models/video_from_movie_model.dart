// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:obi_tec_movie_platform/app/models/video_model.dart';

class VideoFromMovieModel {
  final int id;
  final List<VideoModel> results;
  VideoFromMovieModel({
    required this.id,
    required this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'results': results.map((x) => x.toMap()).toList(),
    };
  }

  factory VideoFromMovieModel.fromMap(Map<String, dynamic> map) {
    return VideoFromMovieModel(
      id: map['id'] as int,
      results: List<VideoModel>.from(
        (map['results'] as List<dynamic>).map<VideoModel>(
          (x) => VideoModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoFromMovieModel.fromJson(String source) =>
      VideoFromMovieModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
