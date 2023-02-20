// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:obi_tec_movie_platform/app/models/movie_model.dart';

class MovieDataResponse {
  int page;
  final List<MovieModel> moviesList;
  final int totalPages;
  final int totalResults;
  MovieDataResponse({
    required this.page,
    required this.moviesList,
    required this.totalPages,
    required this.totalResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'page': page,
      'results': moviesList.map((x) => x.toMap()).toList(),
      'total_pages': totalPages,
      'total_results': totalResults,
    };
  }

  factory MovieDataResponse.fromMap(Map<String, dynamic> map) {
    return MovieDataResponse(
      page: map['page'] as int,
      moviesList: List<MovieModel>.from(
        (map['results'] as List<dynamic>).map<MovieModel>(
          (x) => MovieModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      totalPages: map['total_pages'] as int,
      totalResults: map['total_results'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieDataResponse.fromJson(String source) =>
      MovieDataResponse.fromMap(json.decode(source) as Map<String, dynamic>);
}
