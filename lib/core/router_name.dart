import 'package:flutter/material.dart';

import '../modules/main_page/main_page.dart';

class RouteNames {
  static const String mainPage = '/';
  static const String homeScreen = '/homeScreen';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.mainPage:
        return MaterialPageRoute(builder: (_) => const MainPage());
      // case RouteNames.homeScreen:
      //   return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
