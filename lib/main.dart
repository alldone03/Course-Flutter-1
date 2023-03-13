import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   runApp(MyApp());
// }f

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print("Aswer chosen! $_questionIndex");
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'what\' your favorite color?',
      'what\' your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Question(question[_questionIndex]),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
              Colors.blue,
            )),
            child: Text("answer 1"),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text("answer 2"),
            onPressed: () => print("answer 2 chosen!"),
          ),
          ElevatedButton(
            child: Text("answer 3"),
            onPressed: () {
              print("answer 3 chosen!");
            },
          ),
        ]),
      ),
    );
  }
}
