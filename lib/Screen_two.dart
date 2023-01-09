// ignore: file_names
import 'package:flutter/material.dart';

import 'Screen_three.dart';

class ScreenTwo extends StatefulWidget {
  final String name;
  final int num;
  const ScreenTwo({super.key, required this.name, required this.num});

  @override
  State<ScreenTwo> createState() => _ScreenTwoWidget();
}

class _ScreenTwoWidget extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.name} ${widget.num}"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScreenThree()));
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
