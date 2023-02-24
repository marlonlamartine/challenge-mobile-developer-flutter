import 'package:flutter/material.dart';
import 'package:obi_tec_movie_platform/app/controllers/favorites_controller.dart';
import 'package:obi_tec_movie_platform/app/core/ui/styles/colors_app.dart';
import 'package:obi_tec_movie_platform/app/core/ui/widgets/movie_tile.dart';
import 'package:provider/provider.dart';

import '../movie/movie_page.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  FavoritesController favoritesController = FavoritesController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    favoritesController = context.watch<FavoritesController>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Favorites Page'),
        elevation: 1,
        backgroundColor: context.colorsApp.primary,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.home_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.star_border),
          ),
        ],
      ),
      backgroundColor: context.colorsApp.primary,
      body: Consumer<FavoritesController>(
        builder: (context, favorites, child) {
          return favoritesController.favoriteMovies.isEmpty
              ? const Center(
                  child: Text(
                    'Inicie sua lista de filmes favoritos',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: favorites.favoriteMovies.length,
                  itemBuilder: (_, index) {
                    final movie = favorites.favoriteMovies[index];
                    return MovieTile(
                        thumbnail: movie.thumbnail,
                        title: movie.title,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MoviePage(id: movie.id),
                            ),
                          );
                        });
                  },
                );
        },
      ),
    );
  }
}
