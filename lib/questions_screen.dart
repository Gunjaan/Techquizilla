import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/options_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/quesbg.jpeg'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Center(
                child: Text(
                  "If you use either Telnet or FTP, which is the highest layer you are using to transmit data?",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 30),
              OptionsButton(
                text: "Application",
                onTap: () {},
              ),
              OptionsButton(
                text: "Presentation",
                onTap: () {},
              ),
              OptionsButton(
                text: "Session",
                onTap: () {},
              ),
              OptionsButton(
                text: "Transport",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
