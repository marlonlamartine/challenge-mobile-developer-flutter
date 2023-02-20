import 'package:dio/dio.dart';
//import 'package:dio/io.dart';

const readToken =
    "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiZDYyYWFlNTdiOTVmYzkyM2ZhNTliZDU2OTNlYmVmNiIsInN1YiI6IjYzZWY4NjU4NDU3NjVkMDA3ZjVkY2I1YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.WocZumGJjbrTyM23EXQUyFXJf85wWoPDsN5xCwFPsV4";

final connectionDio = BaseOptions(
  baseUrl: 'https://api.themoviedb.org',
  connectTimeout: const Duration(seconds: 5),
  receiveTimeout: const Duration(seconds: 30),
  contentType: 'application/json;charset=utf-8',
  headers: {'Authorization': 'Bearer $readToken'},
);

/*class ConnectionDio extends DioForNative {
  ConnectionDio()
      : super(
          BaseOptions(
            baseUrl: 'https://api.themoviedb.org',
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 30),
            contentType: 'application/json;charset=utf-8',
            headers: {'Authorization': 'Bearer $readToken'},
          ),
        );
}*/
