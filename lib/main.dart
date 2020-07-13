import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue,
                Colors.lightBlue,
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
            ),
          ),
          elevation: 0.0,
        ),
        body: Container(
          child: DicePage(),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.lightBlue,
              Colors.lightBlueAccent,
              Colors.lightBlueAccent
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 6;
  int rightdicenumber = 6;
  void RandomDiceNumber() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                RandomDiceNumber();
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    RandomDiceNumber();
                  });
                },
                child: Image.asset('images/dice$rightdicenumber.png')),
          ),
        ],
      ),
    );
  }
}

//class DicePage extends StatelessWidget {
