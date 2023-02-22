//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:obi_tec_movie_platform/app/controllers/movie_controller.dart';
import 'package:obi_tec_movie_platform/app/core/ui/styles/colors_app.dart';
import 'package:obi_tec_movie_platform/app/core/ui/widgets/movie_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = MovieController();

  _load() async {
    await _controller.loadMovies();
  }

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.colorsApp.primary,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Home Page'),
          elevation: 1,
          backgroundColor: context.colorsApp.primary,
          actions: [
            IconButton(
              icon: const Icon(Icons.movie_filter_outlined),
              onPressed: _load,
            ),
          ],
        ),
        body: Center(
          child: ListView.builder(
            itemCount: _controller.moviesListed.length,
            itemBuilder: (context, index) {
              final movie = _controller.moviesListed[index];
              return MovieTile(
                thumbnail: movie.posterPath,
                title: movie.title,
                onTap: () {},
              );
            },
          ),
        ));
  }
}
