import 'package:flutter/material.dart';
import 'package:obi_tec_movie_platform/app/pages/home/home_page.dart';
import 'package:obi_tec_movie_platform/app/pages/splash/splash_page.dart';

class ObiTecMoviePlatform extends StatelessWidget {
  const ObiTecMoviePlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Platform',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
