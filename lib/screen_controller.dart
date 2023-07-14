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
    ActiveScreen = HomeScreen(toCategoryScreen, toaddQuestionScreen);
    super.initState();
  }

  void toHomeScreen() {
    setState(() {
      ActiveScreen = HomeScreen(toCategoryScreen, toaddQuestionScreen);
    });
  }

  void toCategoryScreen() {
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

  void toaddQuestionScreen() {
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
