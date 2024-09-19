import 'package:flutter/material.dart';

class TextStyles {
  static const font20BlackMeduim = TextStyle(
    fontSize: 20,
    color: Colors.black,
    shadows: [
      Shadow(
        color: Colors.amberAccent,
        offset: Offset(0.5, 0.5),
        blurRadius: 1,
      ),
    ]

  );
}
