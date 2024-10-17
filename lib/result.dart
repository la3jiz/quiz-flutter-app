import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback restartQuiz;
  Result(this.score, this.restartQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Good job, Your score is ${score}',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restartQuiz,
            textColor: Colors.blue,
            child: Text('restart quiz'),
          ),
        ],
      ),
    );
  }
}
