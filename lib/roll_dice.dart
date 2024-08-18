import 'package:flutter/material.dart';
import 'dart:math';

final randomObject = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});
  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  int currentDiceFace = 2;
  void diceRoll() {
    setState(() {
      currentDiceFace = randomObject.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceFace.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: diceRoll,
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 30,
            ),
            foregroundColor: Colors.white,
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
