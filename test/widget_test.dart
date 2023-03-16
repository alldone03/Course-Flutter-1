// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility in the flutter_test package. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:flutter_complete_guide/main.dart';

// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());

//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);

//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();

//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }

class Person {
  String? name;
  int? age;
  Person({String? inputName, int? age}) {
    this.name = inputName;
    this.age = age;
  }
}

double addNumber(double num1, double num2) {
  return num1 + num2;
}

void main() {
  // var p1 = Person(inputName: "aldan", age: 10);
  // var p2 = Person(inputName: "uldune", age: 20);

  // print("${p1.name}, ${p1.age}");

  for (int data = 1; data <= 15; data++) {
    if (data % 3 == 0 && data % 5 == 0) {
      print("FizzBuzz");
    } else if (data % 3 == 0) {
      print("Fizz");
    } else if (data % 5 == 0) {
      print("Buzz");
    } else {
      print("${data}");
    }
  }
}
