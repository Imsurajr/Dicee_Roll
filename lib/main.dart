import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan.shade900,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee Roll'),
          backgroundColor: Colors.blueGrey.shade600,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void leftChangeDiceFace() {
    setState(
      () {
        print('Right button pressed ');
        rightDiceNumber = Random().nextInt(6) + 1;
      },
    );
  }

  void rightChangeDiceFace() {
    setState(
      () {
        print('Left button pressed');
        leftDiceNumber = Random().nextInt(6) + 1;
      },
    );
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child:
                // Image(
                //   image: AssetImage('images/dice1.png'),
                TextButton(
              onPressed: () {
                rightChangeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          // ),

          Expanded(
            child:
                // Image(
                //   image: AssetImage('images/dice1.png'),
                TextButton(
              onPressed: () {
                leftChangeDiceFace();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
          // ),
        ],
      ),
    );
  }
}
