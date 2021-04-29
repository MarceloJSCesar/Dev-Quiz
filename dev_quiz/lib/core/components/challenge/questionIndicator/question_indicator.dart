import 'package:dev_quiz/core/components/challenge/widget/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/app_text_styles.dart';

class QuestionIndicatorComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Questao 04', style: AppTextStyles.body),
              Text('De 10', style: AppTextStyles.body)
            ],
          ),
          ProgressIndicatorWidget(value: .7)
        ],
      ),
    );
  }
}
