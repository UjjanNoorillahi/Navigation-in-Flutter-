// ignore: file_names
import 'package:flutter/material.dart';
import 'package:navigation_practice/utils/routes_names.dart';

import 'Screen_three.dart';

class ScreenTwo extends StatefulWidget {
  dynamic data;

  ScreenTwo({super.key, required this.data});

  @override
  State<ScreenTwo> createState() => _ScreenTwoWidget();
}

class _ScreenTwoWidget extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data['Node']),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.thirdScreen);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text("Screen 2"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
