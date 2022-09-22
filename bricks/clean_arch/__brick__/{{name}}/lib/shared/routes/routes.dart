import 'package:flutter/material.dart';
import 'package:{{name}}/features/user/presentation/screens/splash/splash_screen.dart';
import 'package:{{name}}/features/user/presentation/screens/home/home_screen.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.id: (context) => const SplashScreen(),
    HomeScreen.id: (context) => const HomeScreen(),
  };
}
