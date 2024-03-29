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
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctlyMarked = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

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
                "Congratulations, you have completed the quiz successfully!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(197, 100, 46, 154),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "SCORE: You answered $correctlyMarked out of $totalQuestions questions correctly!",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(197, 27, 9, 45),
                ),
              ),
              const SizedBox(height: 10),
              QuestionSummary(
                summaryData: summaryData,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: const Color.fromARGB(200, 98, 38, 147),
                ),
                onPressed: () {},
                child: const Text("Play Again"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Made by: @gunjaan",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
