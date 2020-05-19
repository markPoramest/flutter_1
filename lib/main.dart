import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  var answerText = '';
  var isCorrect = false;

  void onPressWrong() {
    setState(() {
      currentIndex = currentIndex + 1;
      answerText = 'false';
    });
    print("Wrong");
  }

  void onPressTrue() {
    setState(() {
      currentIndex = currentIndex + 1;
      answerText = 'true';
      isCorrect = true;
    });
    print("True");
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'Who is PM of Thailand?',
      'Who is the King of Thailand?',
      'Who is the first PM of Thailand?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: <Widget>[
            Question(question[currentIndex]),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  child: Text('Prayuth Chan-o-cha'),
                  onPressed: onPressTrue,
                )),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  child: Text('Yingluck Shinawatra'),
                  onPressed: onPressWrong,
                )),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  child: Text('Abhisit Vejjajiva'),
                  onPressed: onPressWrong,
                )),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  child: Text('Suthep Thaugsuban'),
                  onPressed: onPressWrong,
                )),
            isCorrect
                ? Text(answerText, style: TextStyle(color: Colors.redAccent))
                : Text(answerText)
          ],
        ),
      ),
    );
  }
}
