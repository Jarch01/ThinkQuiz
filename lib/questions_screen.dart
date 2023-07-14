import 'package:flutter/material.dart';
import 'package:multiquiz/button.dart';
import 'package:multiquiz/category_screen.dart';
import 'package:multiquiz/gradient.dart';
import 'package:multiquiz/question_answer_set.dart';
import 'package:multiquiz/result_element.dart';

// ignore: must_be_immutable
class QuestionScreen extends StatefulWidget {
  QuestionScreen(this.function, {super.key});
  void Function() function;

  @override
  // ignore: no_logic_in_create_state
  State<QuestionScreen> createState() => QuestionScreenState(function);
}

class QuestionScreenState extends State<QuestionScreen> {
  QuestionScreenState(this.function);

  List<QuestionAnswer> set = [];
  static List<Widget> answerList = [];
  void Function() function;
  int questionNumber = 0;
  static int correct = 0;

  @override
  void initState() {
    // TODO: implement initState
    answerList = [];
    set = CategoryScreen.Questionset;
    correct = 0;
    super.initState();
  }

  void nextQuestion(Widget answer) {
    answerList.add(answer);
    if (ResultElement.isCorrect) correct = correct + 1;
    if (questionNumber == set.length - 1) {
      function();
    }
    questionNumber = questionNumber + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      decoration: Styling.HomeScreenBox,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            width: 1000,
            child: Text(
              set[questionNumber].Question,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
          ),
          Button(
            const Color.fromARGB(255, 124, 230, 75),
            set[questionNumber].OptionSet[0],
            () {
              nextQuestion(
                ResultElement(
                  set[questionNumber].OptionSet[0],
                  set[questionNumber].Question,
                  set[questionNumber].CorrectAnswer,
                  questionNumber,
                ),
              );
            },
            500,
          ),
          Button(
            const Color.fromARGB(255, 124, 230, 75),
            set[questionNumber].OptionSet[1],
            () {
              nextQuestion(
                ResultElement(
                  set[questionNumber].OptionSet[1],
                  set[questionNumber].Question,
                  set[questionNumber].CorrectAnswer,
                  questionNumber,
                ),
              );
            },
            500,
          ),
          Button(
            const Color.fromARGB(255, 124, 230, 75),
            set[questionNumber].OptionSet[2],
            () {
              nextQuestion(
                ResultElement(
                  set[questionNumber].OptionSet[2],
                  set[questionNumber].Question,
                  set[questionNumber].CorrectAnswer,
                  questionNumber,
                ),
              );
            },
            500,
          ),
          Button(
            const Color.fromARGB(255, 124, 230, 75),
            set[questionNumber].OptionSet[3],
            () {
              nextQuestion(
                ResultElement(
                  set[questionNumber].OptionSet[3],
                  set[questionNumber].Question,
                  set[questionNumber].CorrectAnswer,
                  questionNumber,
                ),
              );
            },
            500,
          ),
        ],
      ),
    );
  }
}
