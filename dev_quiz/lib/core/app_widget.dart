import 'package:flutter/material.dart';
import '../core/views/challenge/challenge_view.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DevQuiz",
      home: ChallengeView(),
    );
  }
}
