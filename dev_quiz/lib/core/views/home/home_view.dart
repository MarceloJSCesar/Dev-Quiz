import 'package:dev_quiz/core/components/home/levelButton/level_button_component.dart';
import 'package:dev_quiz/core/components/home/quizCard/quiz_card_component.dart';
import 'package:flutter/material.dart';
import '../../components/home/appBar/appbar_component.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                LevelButtonComponent(
                  label: 'Facil',
                ),
                LevelButtonComponent(
                  label: 'Medio',
                ),
                LevelButtonComponent(
                  label: 'Dificil',
                ),
                LevelButtonComponent(
                  label: 'Perito',
                ),
              ],
            ),
            QuizCardComponent(),
          ],
        ),
      ),
    );
  }
}
