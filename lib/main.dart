import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftdicenumber = 2;
                });
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print('right button pressed');
                },
                child: Image.asset('images/dice5.png')),
          ),
        ],
      ),
    );
  }
}

//class DicePage extends StatelessWidget {
