import 'package:flutter/material.dart';
import 'package:quotes_app/views/detail_page/detail_page.dart';
import 'package:quotes_app/views/home_page/home_page.dart';

import '../views/splashscreen/splash_screen.dart';

class AppRoutes {
  static String splashscreen = "/";
  static String homePage = "home_page";
  static String detailPage = "detail_page";

  static Map<String, Widget Function(BuildContext)> routes = {
    splashscreen: (context) => const SplashScreen(),
    homePage: (context) => const HomePage(),
    detailPage: (context) => const DetailPage(),
  };
}
