import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.lightBlue,
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
 int leftDiceSide = 1;
 int rightDiceSide = 1;
 clickBtn(){
   leftDiceSide = Random().nextInt(6)+1;
   rightDiceSide = Random().nextInt(6)+1;

 }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(child: Image.asset('images/dice$leftDiceSide.png'),
              onPressed: (){
                setState(() {
                  clickBtn();

                });

              },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(child: Image.asset('images/dice$rightDiceSide.png'),
              onPressed: (){
                setState(() {
                   clickBtn();
                });
              },
              ),
            ),
          ),
        ],
      ),
    );
  }
  }
