import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.onPress, required this.buttonText});

  final void Function() onPress;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(100, 80),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 15, 112),
        ),
        onPressed: onPress,
        child: Text(
          textAlign: TextAlign.center,
          buttonText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
