import 'package:flutter/material.dart';

import 'package:simple_quiz_app/question.dart';
import 'package:simple_quiz_app/answer.dart';
import 'package:simple_quiz_app/quiz.dart';
import 'package:simple_quiz_app/result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  final _questions = const [
    {'questionText' : 'What\'s your name?',
    'answers' : [
      {'text': 'David' , 'score' : 10}, 
      {'text' : 'Pablo', 'score' : 5}, 
      {'text' : 'Martin', 'score' : 7},
      ]
    }, 
    {'questionText' : 'How do you do?',
    'answers' : [
      {'text': 'good' , 'score' : 10}, 
      {'text' : 'fine', 'score' : 7}, 
      {'text' : 'ok', 'score' : 5},
      ]
    }, 
    {'questionText' : 'What\'s your favourite color?',
    'answers' : [
      {'text': 'black' , 'score' : 10}, 
      {'text' : 'white', 'score' : 7}, 
      {'text' : 'red', 'score' : 5},
      ]
    }, 
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerCallback(int score) {
    _totalScore += score;
    //if (_questionIndex < _questions.length)
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length ? 
          Quiz(_answerCallback, _questions, _questionIndex) : 
          Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
