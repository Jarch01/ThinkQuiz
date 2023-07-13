import 'package:flutter/material.dart';
import 'package:multiquiz/category_screen.dart';
import 'package:multiquiz/home_screen.dart';
import 'package:multiquiz/questions_screen.dart';
import 'package:multiquiz/result_screen.dart';

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
    ActiveScreen = HomeScreen(toCategoryScreen);
    super.initState();
  }

  void toHomeScreen() {
    setState(() {
      ActiveScreen = HomeScreen(toCategoryScreen);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ActiveScreen,
    );
  }
}
