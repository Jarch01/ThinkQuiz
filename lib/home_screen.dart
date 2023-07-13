import 'package:flutter/material.dart';
import 'package:multiquiz/button.dart';
import 'package:multiquiz/gradient.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen(this.function, {super.key});
  void Function() function;

  @override
  Widget build(BuildContext context) {
    double width = 200;
    return Scaffold(
      body: Container(
        decoration: Styling.HomeScreenBox,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(
                Icons.quora_rounded,
                size: 80,
                color: Colors.amber,
              ),
              Container(
                alignment: Alignment.center,
                height: 80,
                child: const Text(
                  'Quiz for Class 6 text book',
                  style: TextStyle(
                    color: Color.fromARGB(255, 96, 255, 234),
                    fontSize: 30,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                    const Color.fromARGB(255, 70, 255, 64),
                    'Start Quiz',
                    function,
                    width,
                  ),
                  Button(
                    const Color.fromARGB(255, 255, 64, 245),
                    'Add Question',
                    () {},
                    width,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
