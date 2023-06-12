import 'package:flutter/material.dart';

class OptionsButton extends StatelessWidget {
  const OptionsButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fixedSize: const Size(280, 10),
            // padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'CustomFont',
            ),
            backgroundColor: const Color.fromARGB(230, 255, 255, 255),
            foregroundColor: Colors.black),
        child: Text(text),
      ),
    );
  }
}
