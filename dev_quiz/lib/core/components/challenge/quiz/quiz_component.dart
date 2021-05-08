import 'package:dev_quiz/core/components/challenge/answer/answer_component.dart';
import 'package:flutter/material.dart';
import '../../../app_text_styles.dart';

class QuizComponent extends StatelessWidget {
  final String title;
  QuizComponent({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          AnswerComponent(
            title: 'Titlehbsvdvstdvhsdksjdsrgrtg ertgdxfghdhdghfhfgfdfdf',
          ),
          AnswerComponent(
            title: 'Titlehbsvdvstdvhsdksjdsrgrtg ertgdxfghdhdghfhfgfdfdf',
          ),
          AnswerComponent(
            title: 'Titlehbsvdvstdvhsdksjdsrgrtg ertgdxfghdhdghfhfgfdfdf',
          ),
          AnswerComponent(
            title: 'Titlehbsvdvstdvhsdksjdsrgrtg ertgdxfghdhdghfhfgfdfdf',
          ),
        ],
      ),
    );
  }
}
