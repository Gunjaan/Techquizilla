import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/models/options_button.dart';
import 'package:quiz_app_flutter/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex = currentQuestionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
        title: const Text("TechQuizilla"),
        backgroundColor: const Color.fromARGB(198, 100, 46, 154),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 0),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/quesbg.jpeg'),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  currentQuestion.text,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(198, 100, 46, 154),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              ...currentQuestion.getShuffledAnswers().map((answer) {
                return OptionsButton(
                  text: answer,
                  onTap: answerQuestion,
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
