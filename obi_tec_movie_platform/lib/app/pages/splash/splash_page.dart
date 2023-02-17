import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:obi_tec_movie_platform/app/core/ui/styles/button_styles.dart';
import 'package:obi_tec_movie_platform/app/core/ui/styles/colors_app.dart';
import 'package:obi_tec_movie_platform/app/pages/splash/widgets/splash_button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorsApp.primary,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120, right: 40, left: 40),
            child: Lottie.network(
                'https://assets8.lottiefiles.com/packages/lf20_CTaizi.json'),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * .15),
              child: SplashButton(
                label: 'ACESSAR',
                style: context.buttonStyles.secundaryDarkButton,
                height: 40,
                width: MediaQuery.of(context).size.width * .9,
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
