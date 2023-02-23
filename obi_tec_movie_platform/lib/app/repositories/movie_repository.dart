// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:obi_tec_movie_platform/app/core/config/api/connection_dio.dart';
import 'package:obi_tec_movie_platform/app/models/movie_data_response.dart';
import 'package:obi_tec_movie_platform/app/models/movie_detail_model.dart';
import 'package:obi_tec_movie_platform/app/models/video_from_movie_model.dart';

class MovieRepository {
  final dio = Dio(connectionDio);

  Future<MovieDataResponse> getMoviesData() async {
    final response = await dio.get('/3/movie/popular');
    final result = MovieDataResponse.fromMap(response.data);
    return result;
  }

  Future<MovieDetailModel> getMovieById(int id) async {
    final response = await dio.get('/3/movie/$id');
    final data = MovieDetailModel.fromMap(response.data);
    return data;
  }

  Future<VideoFromMovieModel> getVideoFromMovie(int id) async {
    final response = await dio.get('/3/movie/$id/videos');
    final data = VideoFromMovieModel.fromMap(response.data);
    return data;
  }
}
