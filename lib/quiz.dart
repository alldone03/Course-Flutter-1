import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(
          (questions[questionIndex]["questionText"] as String),
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((question) {
          return Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Answer(
                selectHandler: () {
                  answerQuestion(question['score']);
                },
                answerText: (question['text'] as String),
              ),
            ],
          );
        }).toList(),
      ],
    );
  }
}
