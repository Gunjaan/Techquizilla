import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/models/questions_screen.dart';
import 'package:quiz_app_flutter/models/results_screen.dart';
import '../data/questions.dart';
import 'home_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  Widget? activeScreen;

  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswer.add(answer);

      if (selectedAnswer.length == questions.length) {
        setState(() {
          selectedAnswer = [];
          activeScreen = ResultsScreen(
            changeScreen: () {},
            chosenAnswers: [],
          );
        });
      }
    });
  }

  @override
  void initState() {
    activeScreen = HomePage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });
  }

  void changeScreen() {
    setState(() {
      activeScreen = ResultsScreen(
        chosenAnswers: selectedAnswer,
        changeScreen: () {},
      );
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 94, 24, 198),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
