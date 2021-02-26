import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee', style: TextStyle()),
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
  int righttDiceNumber = 2;

  void changeDice() {
    leftDiceNumber = math.Random().nextInt(6) + 1;
    righttDiceNumber = math.Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Container(
            child: Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeDice();
                      });
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png'))),
          ),
          Container(
              child: Expanded(
                  flex: 1,
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          changeDice();
                        });
                      },
                      child: Image.asset('images/dice$righttDiceNumber.png')))),
        ],
      ),
    );
  }
}
