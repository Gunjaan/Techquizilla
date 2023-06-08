import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/home_page.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: const Color.fromARGB(143, 122, 63, 180),
        //   title: const Text('Quiz App'),
        // ),
        body: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 132, 189, 175),
                Color.fromARGB(255, 71, 150, 132),
              ],
            ),
          ),
          child: HomePage(),
        ),
      ),
    ),
  );
}
