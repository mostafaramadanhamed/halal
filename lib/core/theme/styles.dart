import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle font20BlackMeduim = TextStyle(
      fontSize: 30,
      fontFamily: 'me_quran',
      color: Colors.black,
      shadows: [
        Shadow(
          color: Color.fromARGB(255, 228, 188, 40),
          offset: Offset(0.5, 0.5),
          blurRadius: 1,
        ),
      ]);
  static const TextStyle basmlaTextStyle = TextStyle(
    fontSize: 30,
  );
  static const TextStyle verseTextStyle = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      shadows: [
        Shadow(
          offset: Offset(1, 1),
          blurRadius: 2.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ]);
}
