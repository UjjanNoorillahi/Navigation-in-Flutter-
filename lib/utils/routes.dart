import 'package:flutter/material.dart';
import 'package:navigation_practice/HomeScreen.dart';
import 'package:navigation_practice/Screen_three.dart';
import 'package:navigation_practice/Screen_two.dart';
import 'package:navigation_practice/utils/routes_names.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case RouteName.secondScreen:
        return MaterialPageRoute(
            builder: (context) => ScreenTwo(
                  data: settings.arguments as Map,
                ));

      case RouteName.thirdScreen:
        return MaterialPageRoute(builder: (context) => const ScreenThree());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("No route defined"),
            ),
          );
        });
    }
  }
}
