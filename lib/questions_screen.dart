import 'package:flutter/material.dart';
import 'package:multiquiz/button.dart';
import 'package:multiquiz/category_screen.dart';
import 'package:multiquiz/gradient.dart';
import 'package:multiquiz/question_answer_set.dart';

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
    if (questionNumber == set.length - 1) {
      function();
    }
    questionNumber = questionNumber + 1;
    setState(() {});
  }

  Container getContainer(String answer, String question, String correctAnswer) {
    Color color = const Color.fromARGB(255, 207, 52, 41);
    if (answer == correctAnswer) {
      correct = correct + 1;
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
                getContainer(
                  set[questionNumber].OptionSet[0],
                  set[questionNumber].Question,
                  set[questionNumber].CorrectAnswer,
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
                getContainer(
                  set[questionNumber].OptionSet[1],
                  set[questionNumber].Question,
                  set[questionNumber].CorrectAnswer,
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
                getContainer(
                  set[questionNumber].OptionSet[2],
                  set[questionNumber].Question,
                  set[questionNumber].CorrectAnswer,
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
                getContainer(
                  set[questionNumber].OptionSet[3],
                  set[questionNumber].Question,
                  set[questionNumber].CorrectAnswer,
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
