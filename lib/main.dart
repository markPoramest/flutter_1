import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void onPressAbhisij() {
    print("Wrong");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: <Widget>[
            Text('Who is PM of Thailand?'),
            RaisedButton(
              child: Text('Prayuth Chan-o-cha'),
              onPressed: () => print('Correct'),
            ),
            RaisedButton(
                child: Text('Yingluck Shinawatra'),
                onPressed: () {
                  print("Wrong");
                }),
            RaisedButton(
              child: Text('Abhisit Vejjajiva'),
              onPressed: onPressAbhisij,
            ),
            RaisedButton(
              child: Text('Suthep Thaugsuban'),
              onPressed: () => print("Wrong"),
            )
          ],
        ),
      ),
    );
  }
}
