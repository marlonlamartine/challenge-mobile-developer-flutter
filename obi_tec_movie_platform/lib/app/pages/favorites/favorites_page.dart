import 'package:flutter/material.dart';
import 'package:obi_tec_movie_platform/app/core/ui/styles/colors_app.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Favorites'),
        elevation: 1,
        backgroundColor: context.colorsApp.primary,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.movie_creation_outlined),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
