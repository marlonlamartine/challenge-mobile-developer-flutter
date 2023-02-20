// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:obi_tec_movie_platform/app/models/movie_model.dart';
import 'package:obi_tec_movie_platform/app/repositories/movie_repository.dart';

class MovieController {
  final movieRepository = MovieRepository();

  List<MovieModel> movies = [];

  Future<List<MovieModel>> loadMovies() async {
    final data = await movieRepository.getMoviesData();
    //return data.moviesList;
    for (var i = 0; i < data.moviesList.length; i++) {
      movies.add(data.moviesList[i]);
    }
    return movies;
  }
}
