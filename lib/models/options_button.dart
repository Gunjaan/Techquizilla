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
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          fixedSize: const Size(280, 10),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          backgroundColor: const Color.fromARGB(197, 255, 255, 255),
          foregroundColor: Colors.black),
      child: Text(text),
    );
  }
}
