import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\' your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'what\' your favorite Animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 6},
        {'text': 'Snake', 'score': 2},
        {'text': 'Elephant', 'score': 8},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'what\' your favorite Instructor?',
      'answer': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _resultScore = 0;

  void _resetQuiz() {
    _questionIndex = 0;
    _resultScore = 0;
  }

  void answerQuestion(int score) {
    _resultScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print("we more hve question ${_resultScore}");
    } else {
      print("No more question");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: answerQuestion,
                  questionIndex: _questionIndex)
              : Result(
                  data: _resultScore,
                  resetHandler: _resetQuiz,
                )),
    );
  }
}
