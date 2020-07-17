import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final num finalScore;
  Function restQuiz;

  Result(this.finalScore, this.restQuiz);

  String get resultText {
    String result;

    if (finalScore <= 8) {
      result = 'You are awesome and innocent';
    } else if (finalScore <= 12) {
      result = 'Pretty Likable!';
    } else if (finalScore <= 16) {
      result = 'You are... strange?';
    } else {
      result = 'You are so bad!';
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            resultText,
            style: TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          child: Text(
            "Restart Quiz",
          ),
          textColor: Colors.blue,
          onPressed: restQuiz,
        )
      ],
    );
  }
}
