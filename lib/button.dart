import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Button(this.color, this.string, this.function, this.width, {super.key});
  String string;
  Color color;
  double width;
  void Function() function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.all(20),
          fixedSize: Size.fromWidth(width),
          shape: const StadiumBorder(),
          animationDuration: const Duration(
            seconds: 5,
          ),
          elevation: 30,
        ),
        onPressed: function,
        child: Center(
          child: Text(
            string,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
