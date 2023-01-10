import 'package:flutter/material.dart';
import 'package:navigation_practice/Screen_two.dart';
import 'package:navigation_practice/utils/routes_names.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.secondScreen,
                    arguments: {
                      'Node': 'Js Module',
                      'Flutter': 'Good for Apps'
                    });
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text("Screen 1"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
