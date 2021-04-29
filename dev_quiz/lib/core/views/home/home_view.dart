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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 24,
                ),
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
            SizedBox(
              height: 24,
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: <Widget>[
                QuizCardComponent(),
                QuizCardComponent(),
                QuizCardComponent()
              ],
            )),
          ],
        ),
      ),
    );
  }
}
