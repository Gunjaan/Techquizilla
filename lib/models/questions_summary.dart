import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({required this.summaryData, Key? key})
      : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(197, 79, 36, 121),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Your Answer: ${data['user_answer']}',
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Color.fromARGB(197, 93, 38, 148),
                          ),
                        ),
                        Text(
                          'Correct Answer: ${data['correct_answer']}',
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Divider(),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
