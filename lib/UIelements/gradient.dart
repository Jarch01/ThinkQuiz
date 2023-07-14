import 'package:flutter/material.dart';

class Styling {
  static BoxDecoration HomeScreenBox = const BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.cyanAccent,
        Colors.blue,
        Colors.teal,
        Colors.indigo,
        Color.fromARGB(255, 5, 21, 167),
      ],
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
    ),
  );
  static BoxDecoration CategoryScreenBox = const BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromARGB(255, 255, 251, 24),
        Color.fromARGB(255, 243, 194, 33),
        Color.fromARGB(255, 202, 184, 22),
        Color.fromARGB(255, 212, 132, 26),
        Color.fromARGB(255, 238, 101, 9),
      ],
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
    ),
  );
  static BoxDecoration ResultHeading = const BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
    gradient: LinearGradient(
      colors: [
        Color.fromARGB(255, 23, 4, 185),
        Color.fromARGB(255, 79, 13, 202),
        Color.fromARGB(255, 54, 11, 173),
        Color.fromARGB(255, 13, 32, 143),
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
  );
}
