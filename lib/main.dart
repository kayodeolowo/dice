import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Text(
            "Dice",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  var leftDice = 1;
  var RightDice = 1;

  void rolldice() {
    leftDice = Random().nextInt(6) + 1;
    RightDice = Random().nextInt(6) + 1;
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
                  rolldice();
                });
              },
              child: Image.asset("images/dice$leftDice.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rolldice();
                });
              },
              child: Image.asset("images/dice$RightDice.png"),
            ),
          ),
        ],
      ),
    );
  }
}
