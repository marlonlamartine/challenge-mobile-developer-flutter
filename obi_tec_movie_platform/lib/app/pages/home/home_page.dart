//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:obi_tec_movie_platform/app/controllers/movie_controller.dart';
import 'package:obi_tec_movie_platform/app/core/ui/styles/colors_app.dart';

import '../../models/movie_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = MovieController();

  _load() async {
    List<MovieModel> l = await _controller.loadMovies();
    for (var e in l) {
      print(e.title);
    }
  }

  @override
  void initState() {
    _load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Home Page'),
          elevation: 1,
          backgroundColor: context.colorsApp.primary,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/favorites');
              },
              icon: const Icon(Icons.movie_filter_outlined),
            ),
          ],
        ),
        body: const Center(
          child: Text('clique'),
        ));
  }
}
