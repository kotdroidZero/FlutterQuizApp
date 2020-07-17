import 'package:flutter/material.dart';
import 'package:flutter2dot0/quiz.dart';
import 'package:flutter2dot0/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num _questionIndex = 0;
  num _finalScore = 0;

  void _answerQuestion(int score) {
    _finalScore = _finalScore + score;
    setState(() {
      // if (questionIndex == 2) {
      //   questionIndex = 0;
      //   return;
      // } else
      _questionIndex = _questionIndex + 1;
      //
    });
  }

  void _resetQuiz() {
    setState(() {
      _finalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = const [
      {
        // map
        "questions": "What is your favourite Color?",
        "answers": [
          {'text': "Black", 'score': 1},
          {'text': "Green", 'score': 5},
          {'text': "Blue", 'score': 4}
        ]
      },
      {
        // map
        "questions": "What is your favourite animal?",
        "answers": [
          {'text': "Lion", 'score': 5},
          {'text': "Elephant", 'score': 3},
          {'text': "Snake", 'score': 8},
          {'text': "Rabbit", 'score': 9}
        ]
      },
      {
        // map
        "questions": "Who was your favourite teacher?",
        "answers": [
          {'text': "Pushkar", 'score': 2},
          {'text': "Shikha", 'score': 4},
          {'text': "Apporv", 'score': 6},
          {'text': "Kuldeep", 'score': 10}
        ]
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_answerQuestion, _questions, _questionIndex)
              : Result(_finalScore,_resetQuiz)),
    );
  }
}
