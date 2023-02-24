class Env {
  static Env? _instance;
  // Avoid self isntance
  Env._();
  static Env get instance {
    _instance ??= Env._();
    return _instance!;
  }
}
