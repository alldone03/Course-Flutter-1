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
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'what\' your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 10},
      ],
    },
    {
      'questionText': 'what\' your favorite Animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 6},
        {'text': 'Snake', 'score': 3},
        {'text': 'Elephant', 'score': 8},
        {'text': 'White', 'score': 3},
      ],
    },
    {
      'questionText': 'what\' your favorite Instructor?',
      'answer': [
        {'text': 'Max', 'score': 6},
        {'text': 'Max', 'score': 3},
        {'text': 'Max', 'score': 8},
        {'text': 'Max', 'score': 4},
      ],
    },
  ];

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print("we more hve question ");
    } else {
      print("No more question");
    }
    // print("Aswer chosen! $_questionIndex");
  }

  @override
  Widget build(BuildContext context) {
    // var question = [
    //   'what\' your favorite color?',
    //   'what\' your favorite animal?',
    // ];

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
              : Center(child: Result())),
    );
  }
}
