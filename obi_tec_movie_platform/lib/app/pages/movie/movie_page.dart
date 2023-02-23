// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:obi_tec_movie_platform/app/core/ui/styles/colors_app.dart';
import 'package:obi_tec_movie_platform/app/core/ui/widgets/video_player_view.dart';

import '../../controllers/movie_controller.dart';

class MoviePage extends StatefulWidget {
  final int id;
  const MoviePage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  final _controller = MovieController();

  bool isFaved = false;

  //bool get changeFav => !isFaved;

  bool changeFav() {
    setState(() {
      isFaved = !isFaved;
    });
    return isFaved;
  }

  _loadMovie() async {
    await _controller.loadMovieDetails(widget.id);
    await _controller.loadVideoFromMovie(widget.id);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadMovie();
  }

  @override
  Widget build(BuildContext context) {
    String keyVideo = _controller.videoModel?.key ?? '';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.instance.primary,
        elevation: 0,
        title: const Text('Detalhes'),
      ),
      backgroundColor: context.colorsApp.primary,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Divider(),
            VideoPlayerView(
              url: 'https://www.youtube.com/watch?v=$keyVideo',
            ),
            Text(
              _controller.movieDetailModel?.title ?? '',
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            const Divider(),
            Text(
              _controller.movieDetailModel?.overview ?? '',
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  _controller.movieDetailModel?.voteAverage.toString() ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: changeFav,
                  icon: Icon(
                    size: 30,
                    Icons.star,
                    color: isFaved ? Colors.yellow : null,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
