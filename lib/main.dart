import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/home_page.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: HomePage(),
        backgroundColor: Color.fromARGB(255, 24, 190, 193),
      ),
    ),
  );
}
