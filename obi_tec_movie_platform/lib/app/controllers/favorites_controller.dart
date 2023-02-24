import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:obi_tec_movie_platform/app/models/favorites_model.dart';
import 'package:obi_tec_movie_platform/app/models/movie_detail_model.dart';
import 'package:obi_tec_movie_platform/app/repositories/movie_repository.dart';

class FavoritesController extends ChangeNotifier {
  final movieRepository = MovieRepository();
  MovieDetailModel? mdm;
  final List<int> _idFavoritesList = [];
  List<FavoritesModel> favoriteMovies = [];
  //List<FavoritesModel> get favorites => favoriteMovies.toList();

  UnmodifiableListView<int> get favoritesList =>
      UnmodifiableListView(_idFavoritesList);

  bool isInTheList(int id) {
    final value = favoriteMovies.indexWhere((element) => element.id == id);
    if (value == -1) {
      return false;
    } else {
      return true;
    }
  }

  saveFavoriteMovie(int id, String thumbnail, String title) {
    final value = favoriteMovies.indexWhere((element) => element.id == id);
    if (value == -1) {
      favoriteMovies.add(
        FavoritesModel(
          id: id,
          thumbnail: thumbnail,
          title: title,
        ),
      );
    }
    notifyListeners();
  }

  deleteFavoriteMovie(int id) {
    favoriteMovies.removeWhere((e) => e.id == id);
    notifyListeners();
  }

  saveFavorite(int favoriteId) {
    if (!_idFavoritesList.contains(favoriteId)) {
      _idFavoritesList.add(favoriteId);
    }
    notifyListeners();
  }

  deleteFavorite(int favoriteId) {
    _idFavoritesList.remove(favoriteId);
    notifyListeners();
  }

  /*Future<MovieDetailModel> searchFavoriteMovie(int id) async {
    final data = await movieRepository.getMovieById(id);
    return data;
  }

  Future<void> loadFavorites() async {
    for (var id in _idFavoritesList) {
      final data = await movieRepository.getMovieById(id);
      favoriteMovies.add(
        FavoritesModel(
          id: data.id,
          thumbnail: data.posterPath,
          title: data.title,
        ),
      );
    }
  }*/
}
