import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultElement extends StatelessWidget {
  ResultElement(
      this.answer, this.correctAnswer, this.question, this.questionNumber,
      {super.key});
  String answer;
  String correctAnswer;
  String question;
  int questionNumber;
  static bool isCorrect = false;

  @override
  Widget build(BuildContext context) {
    Color color = const Color.fromARGB(255, 207, 52, 41);
    if (answer == correctAnswer) {
      isCorrect = true;
      color = const Color.fromARGB(255, 40, 184, 45);
    }
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              border: Border.all(
                color: Colors.yellow,
              ),
            ),
            child: Text(
              (questionNumber + 1).toString(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              border: Border.all(
                color: Colors.yellow,
              ),
            ),
            width: 500,
            child: Text(
              question,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              border:
                  Border.all(color: const Color.fromARGB(255, 20, 113, 201)),
              color: color,
            ),
            width: 200,
            child: Text(
              answer,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
