import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/core/components/challenge/widget/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import '../../../app_text_styles.dart';
import '../../../../core/app_colors.dart';

class QuizCardComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border),
        ),
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(height: 16),
          Text('Gerenciamento de Estado', style: AppTextStyles.heading15),
          SizedBox(height: 16),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Text('3/10', style: AppTextStyles.body11),
              ),
              Expanded(flex: 2, child: ProgressIndicatorWidget(value: .3)),
            ],
          )
        ],
      ),
    );
  }
}
