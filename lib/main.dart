import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text("Dicee"),
      ),
      body: DiceePage(),
    ),
  ));
}

class DiceePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DiceePageState();
  }
}

class DiceePageState extends State<DiceePage> {
  Random random = new Random();
  int leftDiceNumber = 1;
  int righttDiceNumber = 1;

  void onClickedDice() {
    setState(() {
      leftDiceNumber = 1 + random.nextInt(6);
      righttDiceNumber = 1 + random.nextInt(6);
      print("left Dice Number : $leftDiceNumber");
      print("right Dice Number : $righttDiceNumber");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    onClickedDice();
                  },
                  child: Image.asset("images/dice$leftDiceNumber.png"))),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  onClickedDice();
                },
                child: Image.asset("images/dice$righttDiceNumber.png")),
          )
        ],
      ),
    );
  }
}
