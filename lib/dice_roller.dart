import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-2.png';
  var currentDiceRoll = 2;
  void rollDice() {
    currentDiceRoll = randomizer.nextInt(6) + 1;
    // var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      // currentDiceRoll=Random().nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });

    print('Changing image..');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          // activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice, // (){} - anonymous function
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20
              //   ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('Roll Dice'), // keep widget arguments last
        )
      ],
    );
  }
}
