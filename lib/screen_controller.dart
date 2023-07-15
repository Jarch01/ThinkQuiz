import 'package:flutter/material.dart';
import 'package:multiquiz/Screens/add_question_screen.dart';
import 'package:multiquiz/Screens/category_screen.dart';
import 'package:multiquiz/Screens/home_screen.dart';
import 'package:multiquiz/Screens/questions_screen.dart';
import 'package:multiquiz/Screens/result_screen.dart';

class ScreenController extends StatefulWidget {
  const ScreenController({super.key});

  @override
  State<ScreenController> createState() => _ScreenControllerState();
}

class _ScreenControllerState extends State<ScreenController> {
  // ignore: non_constant_identifier_names
  Widget? ActiveScreen;

  @override
  void initState() {
    ActiveScreen = HomeScreen(toCategoryScreenforStart, toCategoryScreenforAdd);
    super.initState();
  }

  void toHomeScreen() {
    setState(() {
      ActiveScreen =
          HomeScreen(toCategoryScreenforStart, toCategoryScreenforAdd);
    });
  }

  void toCategoryScreenforStart() {
    setState(() {
      ActiveScreen = CategoryScreen(toQuestionScreen);
    });
  }

  void toQuestionScreen() {
    setState(() {
      ActiveScreen = QuestionScreen(toResultScreen);
    });
  }

  void toResultScreen() {
    setState(() {
      ActiveScreen = ResultScreen(toHomeScreen);
    });
  }

  void toCategoryScreenforAdd() {
    setState(() {
      ActiveScreen = CategoryScreen(toAddQuestionScreen);
    });
  }

  void toAddQuestionScreen() {
    setState(() {
      ActiveScreen = AddQuestionScreen(toHomeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ActiveScreen,
    );
  }
}
