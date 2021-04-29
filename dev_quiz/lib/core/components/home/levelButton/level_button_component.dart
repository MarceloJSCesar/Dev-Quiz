import 'package:dev_quiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonComponent extends StatelessWidget {
  final String label;
  LevelButtonComponent({Key? key, required this.label})
      : assert(["Facil", "Medio", "Dificil", "Perito"].contains(label)),
        super(key: key);

  final config = {
    'Facil': {
      'borderColor': AppColors.levelButtonBorderFacil,
      'fontColor': AppColors.levelButtonTextFacil,
      'color': AppColors.levelButtonFacil
    },
    'Medio': {
      'borderColor': AppColors.levelButtonBorderMedio,
      'fontColor': AppColors.levelButtonTextMedio,
      'color': AppColors.levelButtonMedio
    },
    'Dificil': {
      'borderColor': AppColors.levelButtonBorderDificil,
      'fontColor': AppColors.levelButtonTextDificil,
      'color': AppColors.levelButtonDificil
    },
    'Perito': {
      'borderColor': AppColors.levelButtonBorderPerito,
      'fontColor': AppColors.levelButtonTextPerito,
      'color': AppColors.levelButtonPerito
    },
  };

  Color get color => config[label]!['color']!;
  Color get fontColor => config[label]!['fontColor']!;
  Color get borderColor => config[label]!['borderColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: color,
          border: Border.fromBorderSide(BorderSide(color: borderColor))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        child: Text(
          label,
          style: GoogleFonts.notoSans(color: fontColor, fontSize: 13),
        ),
      ),
    );
  }
}
