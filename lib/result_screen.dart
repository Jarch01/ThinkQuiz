import 'package:flutter/material.dart';
import 'package:multiquiz/button.dart';
import 'package:multiquiz/category_screen.dart';
import 'package:multiquiz/gradient.dart';
import 'package:multiquiz/questions_screen.dart';

// ignore: must_be_immutable
class ResultScreen extends StatelessWidget {
  void Function() function;
  List<Widget> answerList = QuestionScreenState.answerList;

  ResultScreen(this.function, {super.key}) {
    int correct = QuestionScreenState.correct;
    int total = answerList.length;
    String subjectChoosed = CategoryScreen.subjectChoosed;
    String format = "$subjectChoosed ($correct / $total)";
    answerList.insert(
      0,
      Container(
        width: 800,
        alignment: Alignment.center,
        decoration: Styling.ResultHeading,
        padding: const EdgeInsets.all(10),
        child: Text(
          format,
          style: const TextStyle(
            color: Color.fromARGB(255, 241, 241, 241),
            fontSize: 30,
          ),
        ),
      ),
    );
    answerList.add(
      Button(
        const Color.fromARGB(255, 42, 211, 118),
        'Restart',
        function,
        200,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: Styling.CategoryScreenBox,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: answerList,
        ),
      ),
    );
  }
}
