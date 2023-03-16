import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int data;
  final VoidCallback resetHandler;
  Result({required this.data, required this.resetHandler});

  String get resultPhrase {
    var resultText = "You did it";
    if (data <= 8) {
      resultText = "you are awesome";
    } else if (data <= 12) {
      resultText = "pretty like able";
    } else if (data <= 16) {
      resultText = "you are ... strange?";
    } else {
      print("youare so bad");
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Your Score ${data}",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(onPressed: resetHandler, child: Text("Reset"))
          ],
        ),
      ),
    );
  }
}
