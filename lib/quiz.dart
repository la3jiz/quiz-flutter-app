import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './prevAnswer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  final VoidCallback returnAnswer;

  Quiz(
      {required this.answerQuestion,
      required this.questionIndex,
      required this.questions,
      required this.returnAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['answer'] as String,
              () => answerQuestion(answer['score']));
        }).toList(),
        PrevAnswer(returnAnswer)
      ],
    );
  }
}
