import 'package:flutter/material.dart';
import '../../../app_colors.dart';
import '../../../app_text_styles.dart';

class AnswerComponent extends StatelessWidget {
  final String title;
  final bool isRightAnswer;
  final bool isSelected;
  AnswerComponent({
    Key? key,
    required this.title,
    this.isRightAnswer = false,
    this.isSelected = false,
  }) : super(key: key);
  Color get _selectedColorRight =>
      isRightAnswer ? AppColors.darkGreen : AppColors.darkRed;
  Color get _selectedBorderRight =>
      isRightAnswer ? AppColors.darkGreen : AppColors.lightRed;
  Color get _selectedColorCardRight =>
      isRightAnswer ? AppColors.lightGreen : AppColors.lightRed;
  Color get _selectedBorderCardRight =>
      isRightAnswer ? AppColors.green : AppColors.red;
  TextStyle get _selectedTextStyleRight =>
      isRightAnswer ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;
  IconData get _selectedIconRight => isRightAnswer ? Icons.check : Icons.close;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? _selectedColorCardRight : AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(
            BorderSide(
              color: isSelected ? _selectedBorderCardRight : AppColors.border,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Text(
                title,
                style:
                    isSelected ? _selectedTextStyleRight : AppTextStyles.body,
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                  color: isSelected ? _selectedColorRight : AppColors.white,
                  shape: BoxShape.circle,
                  border: Border.fromBorderSide(BorderSide(
                      color: isSelected
                          ? _selectedBorderRight
                          : AppColors.border))),
              child: isSelected ? Icon(_selectedIconRight) : null,
            ),
          ],
        ),
      ),
    );
  }
}
