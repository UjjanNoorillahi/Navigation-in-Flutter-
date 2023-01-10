import 'package:flutter/material.dart';
import 'package:navigation_practice/Screen_three.dart';
import 'package:navigation_practice/Screen_two.dart';
import 'package:navigation_practice/utils/routes.dart';
import 'package:navigation_practice/utils/routes_names.dart';

import 'HomeScreen.dart';

void main() {
  runApp(const FirstScreen());
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
