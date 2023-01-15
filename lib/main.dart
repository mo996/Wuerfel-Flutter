import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text('Würfel'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void generateRandomDiceNumbers() {
    leftDiceNumber = 1 + Random().nextInt(7 - 1);
    rightDiceNumber = 1 + Random().nextInt(7 - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  generateRandomDiceNumbers();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  generateRandomDiceNumbers();
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
