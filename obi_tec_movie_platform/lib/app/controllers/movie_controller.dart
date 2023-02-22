// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:obi_tec_movie_platform/app/models/movie_data_response.dart';
import 'package:obi_tec_movie_platform/app/models/movie_model.dart';
import 'package:obi_tec_movie_platform/app/repositories/movie_repository.dart';

class MovieController {
  final movieRepository = MovieRepository();
  MovieDataResponse? movieDataResponse;

  /*List<MovieModel> get moviesListed =>
      movieDataResponse?.moviesList ?? <MovieModel>[];*/

  List<MovieModel> moviesListed = [];

  /*Future<void> loadMovies() async {
    final data = await movieRepository.getMoviesData();
    movieDataResponse?.page = data.page;

    for (var movie in data.moviesList) {
      movieDataResponse?.moviesList.add(movie);
    }
    print(movieDataResponse?.page);
    //return movieDataResponse?.moviesList;
  }*/

  Future<void> loadMovies() async {
    final data = await movieRepository.getMoviesData();
    for (var movie in data.moviesList) {
      moviesListed.add(movie);
    }
  }
}
