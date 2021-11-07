import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow[600],
        appBar: AppBar(
          title: Text(
            'DICE APP',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black87,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override //statefulwidget으로 설정
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1; // 첫시작 주사위 변수 지정
  int rightDiceNumber = 1; // 첫시작 주사위 변수 지정

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  } // 함수모음함수

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // Expanded로 양쪽균형잡히게 배열
            child: FlatButton(
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace(); //지정한함수
              },
            ),
          ),
          Expanded(
            // Expanded로 양쪽균형잡히게 배열
            child: FlatButton(
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace(); //지정한함수
              },
            ),
          ),
        ],
      ),
    );
  }
}
