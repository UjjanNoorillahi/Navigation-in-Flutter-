// ignore: file_names
import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  static const String id = 'screen_three';
  // final String name;
  // final int num;
  const ScreenThree({
    super.key,
  });

  @override
  State<ScreenThree> createState() => _ScreenThreeWidget();
}

class _ScreenThreeWidget extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text(""),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
