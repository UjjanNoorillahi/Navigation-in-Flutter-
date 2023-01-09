// ignore: file_names
import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  final String name;
  final int num;
  const ScreenThree({super.key, required this.name, required this.num});

  @override
  State<ScreenThree> createState() => _ScreenThreeWidget();
}

class _ScreenThreeWidget extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Three"),
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
                child: Center(
                  child: Text("${widget.name} ${widget.num}"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
