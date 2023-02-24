import 'package:flutter/material.dart';
import 'package:obi_tec_movie_platform/app/controllers/favorites_controller.dart';
import 'package:obi_tec_movie_platform/app/obi_tec_movie_platform.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoritesController(),
      child: const ObiTecMoviePlatform(),
    ),
  );
}
