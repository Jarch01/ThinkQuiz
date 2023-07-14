import 'package:flutter/material.dart';
import 'package:multiquiz/UIelements/button.dart';
import 'package:multiquiz/UIelements/gradient.dart';
import 'package:multiquiz/UIelements/question_answer_set.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatelessWidget {
  CategoryScreen(this.function, {super.key});
  void Function() function;
  static String subjectChoosed = "";
  static List<QuestionAnswer> Questionset = [];

  @override
  Widget build(BuildContext context) {
    double width = 200;
    return Container(
      alignment: Alignment.center,
      decoration: Styling.CategoryScreenBox,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                const Color.fromARGB(255, 101, 113, 223),
                'Mathematics',
                () {
                  subjectChoosed = 'Mathematics';
                  Questionset = QuestionAnswerSet.Mathset;
                  function();
                },
                width,
              ),
              Button(
                const Color.fromARGB(255, 102, 114, 218),
                'Chemistry',
                () {
                  subjectChoosed = 'Chemistry';
                  Questionset = QuestionAnswerSet.Chemistryset;
                  function();
                },
                width,
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                const Color.fromARGB(255, 101, 113, 223),
                'Life Science',
                () {
                  subjectChoosed = 'Life Science';
                  Questionset = QuestionAnswerSet.LifeScienceset;
                  function();
                },
                width,
              ),
              Button(
                const Color.fromARGB(255, 102, 114, 218),
                'Physics',
                () {
                  subjectChoosed = 'Physics';
                  Questionset = QuestionAnswerSet.Physicsset;
                  function();
                },
                width,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
