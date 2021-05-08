import 'package:flutter/material.dart';
import '../../../../core/app_text_styles.dart';
import '../../../components/challenge/widgets/progress_indicator_widget.dart';

class QuestionIndicatorComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          // after create a appsizedbox
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Questao 04', style: AppTextStyles.body),
              Text('De 10', style: AppTextStyles.body)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ProgressIndicatorWidget(value: .7)
        ],
      ),
    );
  }
}
