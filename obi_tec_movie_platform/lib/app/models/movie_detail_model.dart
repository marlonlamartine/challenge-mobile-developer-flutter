// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:obi_tec_movie_platform/app/models/genre_model.dart';
import 'package:obi_tec_movie_platform/app/models/production_company_model.dart';
import 'package:obi_tec_movie_platform/app/models/production_country_model.dart';
import 'package:obi_tec_movie_platform/app/models/spoken_language_model.dart';

class MovieDetailModel {
  final bool adult;
  final String backdropPath;
  final dynamic belongsToCollection;
  final int budget;
  final List<GenreModel> genres;
  final String homepage;
  final int id;
  final String imdbId;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final List<ProductionCompanyModel> productionCompanies;
  final List<ProductionCountryModel> productionCountries;
  final String releaseDate;
  final int revenue;
  final int runtime;
  final List<SpokenLanguageModel> spokenLanguages;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  MovieDetailModel({
    required this.adult,
    required this.backdropPath,
    required this.belongsToCollection,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adult': adult,
      'backdrop_path': backdropPath,
      'belongs_to_collection': belongsToCollection,
      'budget': budget,
      'genres': genres.map((x) => x.toMap()).toList(),
      'homepage': homepage,
      'id': id,
      'imdb_id': imdbId,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'production_companies':
          productionCompanies.map((x) => x.toMap()).toList(),
      'production_countries':
          productionCountries.map((x) => x.toMap()).toList(),
      'release_date': releaseDate,
      'revenue': revenue,
      'runtime': runtime,
      'spoken_languages': spokenLanguages.map((x) => x.toMap()).toList(),
      'status': status,
      'tagline': tagline,
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }

  factory MovieDetailModel.fromMap(Map<String, dynamic> map) {
    return MovieDetailModel(
      adult: map['adult'] as bool,
      backdropPath: map['backdrop_path'] as String,
      belongsToCollection: map['belongs_to_collection'] as dynamic,
      budget: map['budget'] as int,
      genres: List<GenreModel>.from(
        (map['genres'] as List<dynamic>).map<GenreModel>(
          (x) => GenreModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      homepage: map['homepage'] as String,
      id: map['id'] as int,
      imdbId: map['imdb_id'] as String,
      originalLanguage: map['original_language'] as String,
      originalTitle: map['original_title'] as String,
      overview: map['overview'] as String,
      popularity: map['popularity'] as double,
      posterPath: map['poster_path'] as String,
      productionCompanies: List<ProductionCompanyModel>.from(
        (map['production_companies'] as List<dynamic>)
            .map<ProductionCompanyModel>(
          (x) => ProductionCompanyModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      productionCountries: List<ProductionCountryModel>.from(
        (map['production_countries'] as List<dynamic>)
            .map<ProductionCountryModel>(
          (x) => ProductionCountryModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      releaseDate: map['release_date'] as String,
      revenue: map['revenue'] as int,
      runtime: map['runtime'] as int,
      spokenLanguages: List<SpokenLanguageModel>.from(
        (map['spoken_languages'] as List<dynamic>).map<SpokenLanguageModel>(
          (x) => SpokenLanguageModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      status: map['status'] as String,
      tagline: map['tagline'] as String,
      title: map['title'] as String,
      video: map['video'] as bool,
      voteAverage: map['vote_average'] as double,
      voteCount: map['vote_count'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieDetailModel.fromJson(String source) =>
      MovieDetailModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
