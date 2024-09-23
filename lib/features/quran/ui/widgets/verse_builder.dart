import 'package:flutter/material.dart';
import 'package:halal/features/settings/data/settings_constants.dart';

class VerseBuilder extends StatelessWidget {
  final int currentIndex;
  final num previousIndex;
  final dynamic content;
  const VerseBuilder(
      {super.key,
      required this.currentIndex,
      required this.previousIndex,
      this.content});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        content[currentIndex + previousIndex]['aya_text'],
        style: TextStyle(
          fontSize: SettingsConstants.mus7afDefaultFontSize,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(196, 0, 0, 0),
        ),
      ),
    );
  }
}
