import 'package:flutter/material.dart';
import 'package:{{name}}/features/user/presentation/screens/splash/splash_screen.dart';

class UserRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.id: (context) => const SplashScreen(),
  };
}
