import 'package:flutter/material.dart';
import 'package:halal/core/helpers/arabic_numbers_converter.dart';

class VerseShape extends StatelessWidget {
  const VerseShape({super.key, required this.verseNumber});
  final int verseNumber;
/// todo add +1 to verseNumber
  @override
  Widget build(BuildContext context) {
    return Text(
      "\uFD3E"+verseNumber.toString().toArabicNumbers+"\uFD3F",
      style: ,
    );
  }
}
