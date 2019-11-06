import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your name?', 'How do you do?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text('Quiz'),
            RaisedButton(
              child: Text(questions[0]),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text(questions[1]),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
