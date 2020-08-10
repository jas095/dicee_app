import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;

  int rightDiceNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: _getDiceNumber,
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: _getDiceNumber,
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void _getDiceNumber() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
}
