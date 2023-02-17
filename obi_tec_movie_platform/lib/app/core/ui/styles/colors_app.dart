import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();
  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0XFF032541);
  Color get secondaryLight => const Color(0XFFB6FCCD);
  Color get secondaryDark => const Color(0XFF24D6AA);
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colorsApp => ColorsApp.instance;
}
