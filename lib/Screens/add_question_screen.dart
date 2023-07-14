import 'package:flutter/material.dart';
import 'package:multiquiz/UIelements/button.dart';
import 'package:multiquiz/UIelements/gradient.dart';

class AddQuestionScreen extends StatefulWidget {
  AddQuestionScreen(this.function, {super.key});
  void Function() function;

  @override
  State<AddQuestionScreen> createState() => AddQuestionScreenState(function);
}

class AddQuestionScreenState extends State<AddQuestionScreen> {
  AddQuestionScreenState(this.function);
  void Function() function;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: Styling.CategoryScreenBox,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Button(
            Colors.blue,
            "Pehli fursat me nikal",
            function,
            300,
          ),
        ],
      ),
    );
  }
}
