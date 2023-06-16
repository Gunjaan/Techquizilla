import 'package:flutter/material.dart';
import '../models/questions_summary.dart';
import '../data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    required void Function() changeScreen,
    Key? key,
    required this.chosenAnswers,
  }) : super(key: key);

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
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
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Congratulations! You have completed the quiz successfully!",
              ),
              const SizedBox(height: 10),
              const Text("SCORE: You answered x out of y questions correctly!"),
              const SizedBox(height: 10),
              QuestionSummary(
                summaryData: getSummaryData(),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Play Again"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
