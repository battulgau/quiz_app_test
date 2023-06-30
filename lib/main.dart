import 'package:flutter/material.dart';
import 'package:quiz_app_test/quiz.dart';
import 'package:quiz_app_test/result.dart';

void main() => runApp(MyApp());

const questions = [
  {
    "questionText": "Dart хэлийг анх хэзээ олон нийтэд танилцуулсан вэ?",
    "answer": [
      {"text": "2010", "score": 0},
      {"text": "2011", "score": 1},
      {"text": "2012", "score": 0},
      {"text": "2013", "score": 0},
      {"text": "2014", "score": 0},
    ]
  },
  {
    "questionText": "Flutter-н 1.0 хувилбар хэзээ гарсан вэ?",
    "answer": [
      {"text": "2015 оны 10 сар", "score": 0},
      {"text": "2016 оны 03 сар", "score": 0},
      {"text": "2017 оны 05 сар", "score": 0},
      {"text": "2018 оны 12 сар", "score": 1},
      {"text": "2019 оны 04 сар", "score": 0},
    ],
  },
  {
    "questionText": "Flutter гэж юу вэ?",
    "answer": [
      {"text": "Программчлалын хэл", "score": 0},
      {"text": "Нээлттэй эхийн framework", "score": 1},
      {"text": "UI/UX хэрэгсэл", "score": 0},
      {"text": "Үйлдлийн систем", "score": 0},
    ],
  },
  {
    "questionText": "Flutter-г ямар компани хөгжүүлсэн вэ?",
    "answer": [
      {"text": "Microsoft", "score": 0},
      {"text": "Facebook", "score": 0},
      {"text": "Amazon", "score": 0},
      {"text": "Google", "score": 1},
    ],
  },
];

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int totalScore = 0;
  void questionAnswer(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: questionIndex < questions.length
            ? Quiz(questions, questionIndex, questionAnswer)
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
