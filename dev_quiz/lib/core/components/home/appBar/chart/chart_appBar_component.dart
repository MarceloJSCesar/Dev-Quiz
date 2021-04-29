import 'package:flutter/material.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';

class ChartAppBarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              height: 80,
              width: 80,
              child: CircularProgressIndicator(
                value: .75,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                backgroundColor: AppColors.chartSecondary,
                strokeWidth: 10,
              ),
            ),
          ),
          Center(child: Text('75%', style: AppTextStyles.heading))
        ],
      ),
    );
  }
}
