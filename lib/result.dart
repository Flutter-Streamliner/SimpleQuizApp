import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (totalScore < 8) {
      resultText = 'You are awesome and innocent!';
    } else if (totalScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (totalScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText ='You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(child: Text(resultPhrase)),
        FlatButton(
          child: Text('Restart Quiz!'),
          onPressed: resetQuiz,
        ),
      ],
    );
  }
}