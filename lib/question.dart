import 'package:flutter/material.dart';
class Question extends StatelessWidget{
  final String questionExit;
  Question(this.questionExit);
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(questionExit,
        style : TextStyle(    fontSize: 40,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 3
            ..color = Colors.redAccent[700],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

}