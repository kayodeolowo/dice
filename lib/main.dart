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
  const Dicepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextButton(
                onPressed: () {},
                child: Image.asset("images/dice1.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset("images/dice2.png"),
            ),
          ),
        ],
      ),
    );
  }
}
