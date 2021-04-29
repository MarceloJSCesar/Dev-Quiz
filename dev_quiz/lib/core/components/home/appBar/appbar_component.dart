import 'package:flutter/material.dart';
import '../../../app_gradients.dart';
import '../../../app_text_styles.dart';
import 'scorecard/score_card_component.dart';

class AppBarComponent extends PreferredSize {
  AppBarComponent()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(
              children: <Widget>[
                Container(
                  height: 161,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    gradient: AppGradients.linear,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text.rich(
                        TextSpan(
                          text: 'Hey, ',
                          style: AppTextStyles.title,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'D Jordan',
                                style: AppTextStyles.titleBold),
                          ],
                        ),
                      ),
                      Container(
                        height: 58,
                        width: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://avatars.githubusercontent.com/u/70863440?v=4'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 1.2),
                  child: ScoreCardComponent(),
                ),
              ],
            ),
          ),
        );
}
