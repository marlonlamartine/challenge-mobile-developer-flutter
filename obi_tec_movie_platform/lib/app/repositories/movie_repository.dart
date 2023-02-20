// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:obi_tec_movie_platform/app/core/config/api/connection_dio.dart';
import 'package:obi_tec_movie_platform/app/models/movie_data_response.dart';

class MovieRepository {
  final dio = Dio(connectionDio);

  Future<MovieDataResponse> getMoviesData() async {
    final response = await dio.get('/3/movie/popular');
    final result = MovieDataResponse.fromMap(response.data);
    return result;
  }
}
