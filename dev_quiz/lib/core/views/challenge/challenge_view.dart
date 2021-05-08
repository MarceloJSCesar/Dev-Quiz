import 'package:dev_quiz/core/components/challenge/questionIndicator/question_indicator.dart';
import 'package:dev_quiz/core/components/challenge/quiz/quiz_component.dart';
import 'package:flutter/material.dart';

class ChallengeView extends StatefulWidget {
  @override
  _ChallengeViewState createState() => _ChallengeViewState();
}

class _ChallengeViewState extends State<ChallengeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestionIndicatorComponent(),
        ),
      ),
      body: QuizComponent(
        title: 'sgvdjdflusbfjgcvkvc',
      ),
    );
  }
}
