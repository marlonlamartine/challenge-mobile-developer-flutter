// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:obi_tec_movie_platform/app/models/movie_data_response.dart';
import 'package:obi_tec_movie_platform/app/models/movie_detail_model.dart';
import 'package:obi_tec_movie_platform/app/models/movie_model.dart';
import 'package:obi_tec_movie_platform/app/models/video_model.dart';
import 'package:obi_tec_movie_platform/app/repositories/movie_repository.dart';

class MovieController {
  final movieRepository = MovieRepository();

  MovieDataResponse? movieDataResponse;
  List<MovieModel> moviesListed = [];
  MovieDetailModel? movieDetailModel;
  VideoModel? videoModel;

  Future<void> loadMovies() async {
    final data = await movieRepository.getMoviesData();
    for (var movie in data.moviesList) {
      moviesListed.add(movie);
    }
  }

  Future<void> loadMovieDetails(int id) async {
    final data = await movieRepository.getMovieById(id);
    movieDetailModel = data;
  }

  Future<void> loadVideoFromMovie(int id) async {
    final data = await movieRepository.getVideoFromMovie(id);
    for (var element in data.results) {
      if (element.type == 'Trailer' && element.site == 'YouTube') {
        videoModel = element;
      }
    }
  }
}
