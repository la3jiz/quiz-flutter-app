import 'dart:ffi';

import "package:flutter/material.dart";

import './quiz.dart';
import './result.dart';

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
  var _questionIndex = 0;

  final _questions = const [
    {
      'question': 'what\'s your favourite animal ?',
      'answers': [
        {'answer': 'dog', 'score': 10},
        {'answer': 'cat', 'score': 5},
        {'answer': 'lion', 'score': 20},
        {'answer': 'rabbit', 'score': 3}
      ]
    },
    {
      'question': 'what\'s your favourite color ?',
      'answers': [
        {'answer': 'red', 'score': 10},
        {'answer': 'blue', 'score': 5},
        {'answer': 'green', 'score': 3},
        {'answer': 'yellow', 'score': 1}
      ]
    },
    {
      'question': 'what\'s your favourite book ?',
      'answers': [
        {'answer': 'book1', 'score': 3},
        {'answer': 'book2', 'score': 5},
        {'answer': 'book3', 'score': 10},
        {'answer': 'Laziz way to financial freedom', 'score': 20}
      ]
    },
  ];

  var _totalScore = 0;

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length)
      setState(() {
        _questionIndex++;
      });

    _totalScore += score;
  }

  void _returnAnswer() => setState(() {
        _questionIndex > 0
            ? setState(() {
                _questionIndex--;
              })
            : setState(() {
                _questionIndex = 0;
              });
        ;
      });
  void _restartQuiz() => setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("first app"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                  returnAnswer: _returnAnswer,
                )
              : Result(_totalScore,_restartQuiz)),
    );
  }
}
