import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {required void Function() changeScreen,
      super.key,
      required this.chosenAnswers});

  final List<String> chosenAnswers;

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
          // ignore: unnecessary_const, unnecessary_const
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
                "Congratulations! You have completed the quiz successfully!"),
            const SizedBox(
              height: 10,
            ),
            const Text("SCORE: You answered x out of y questions correctly!"),
            const SizedBox(
              height: 10,
            ),
            const Text("List of questions and answers...."),
            const SizedBox(
              height: 10,
            ),
            TextButton(onPressed: () {}, child: const Text("Play Again")),
          ]),
        ),
      ),
    );
  }
}
