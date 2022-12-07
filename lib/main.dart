import 'package:flutter/material.dart';

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

class Dicepage extends StatelessWidget {
  Dicepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var leftDice = 4;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                print("object");
              },
              child: Image.asset("images/dice$leftDice.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Image.asset("images/dice2.png"),
            ),
          ),
        ],
      ),
    );
  }
}
