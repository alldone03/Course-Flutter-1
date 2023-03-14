import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_complete_guide/answer.dart';

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

  var questions = [
    {
      'questionText': 'what\' your favorite color?',
      'answer': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'what\' your favorite Animal?',
      'answer': ['Rabbit', 'Snake', 'Elephant', 'White'],
    },
    {
      'questionText': 'what\' your favorite Instructor?',
      'answer': ['Max', 'Max', 'Max', 'Max'],
    },
  ];

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
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
          body: _questionIndex < questions.length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Question(
                      questions[_questionIndex]["questionText"].toString(),
                    ),
                    ...(questions[_questionIndex]['answer'] as List<String>)
                        .map((question) {
                      return Answer(
                        selectHandler: answerQuestion,
                        answerText: question,
                      );
                    }).toList(),
                  ],
                )
              : Center(child: Text("hello"))),
    );
  }
}
