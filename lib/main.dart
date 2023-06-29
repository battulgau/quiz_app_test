import 'package:flutter/material.dart';
import 'package:quiz_app_test/answer.dart';

void main() => runApp(MyApp());

const questions = [
  {
    "questionText": "Dart хэлийг анх хэзээ олон нийтэд танилцуулсан вэ?",
    "answer": ["2010", "2011", "2012", "2013", "2014"]
  },
  {
    "questionText": "Flutter-н 1.0 хувилбар хэзээ гарсан вэ?",
    "answer": [
      "2015 оны 10 сар",
      "2016 оны 03 сар",
      "2017 оны 05 сар",
      "2018 оны 12 сар",
      "2019 оны 04 сар"
    ],
  }
];

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  void questionAnswer() {
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex += 1;
      }
      // else {questionIndex = 0;}
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 15, top: 15),
              width: double.infinity,
              child: const Text(
                "Асуулт 1/4",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                textAlign: TextAlign.right,
              ),
            ),
            Container(
              color: Colors.lightBlueAccent,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                questions[questionIndex]["questionText"].toString(),
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            for (String answer in questions[questionIndex]["answer"] as List)
              Answer(questionAnswer, answer.toString()),
          ],
        ),
      ),
    );
  }
}
