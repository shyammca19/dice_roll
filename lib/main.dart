import 'package:flutter/material.dart';
import 'package:dice_roll/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DICE ROLLER'),
          backgroundColor: const Color.fromARGB(231, 0, 0, 0),
          foregroundColor: Colors.white,
        ),
        body: const GradientContainer(
          Color.fromARGB(255, 71, 71, 71),
          Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
