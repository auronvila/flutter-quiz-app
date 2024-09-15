import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.questionsData});

  final List<Map<String, Object>> questionsData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: questionsData.map((data) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: data['user_answer'] == data['correct_answer']
                    ? Colors.green
                    : Colors.red,
                shape: BoxShape.circle,
              ),
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              padding: const EdgeInsets.all(15),
              alignment: Alignment.center,
              child: Text(
                ((data['question_index'] as int) + 1).toString(),
                style: const TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['question'] as String,
                    style: GoogleFonts.lato(color: CupertinoColors.white),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    data['user_answer'] as String,
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    data['correct_answer'] as String,
                    style: const TextStyle(color: Colors.green),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
