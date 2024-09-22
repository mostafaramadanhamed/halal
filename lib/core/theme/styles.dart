import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font30BlackMeduim = TextStyle(
      fontSize: 30.sp,
      fontFamily: 'me_quran',
      color: Colors.black,
      shadows: const [
        Shadow(
          color: Color.fromARGB(255, 255, 229, 137),
          offset: Offset(0.5, 0.5),
          blurRadius: 1,
        ),
      ]);
  static TextStyle font25BlackMeduim = TextStyle(
    fontSize: 25.sp,
    fontFamily: 'me_quran',
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle indexTextStyle = TextStyle(
      fontSize: 25.sp,
      fontFamily: 'Vazirmatn',
      color: Colors.black,
      
      fontWeight: FontWeight.w500,
      shadows: const [
        Shadow(
          color: Color.fromARGB(121, 10, 20, 23),
          offset: Offset(0.5, 0.5),
          blurRadius: 1,
        ),
      ]);
  static TextStyle basmlaTextStyle = TextStyle(
    fontSize: 30.sp,
  );
  static TextStyle totalVersesTextStyle = TextStyle(
      fontSize: 15.sp, color: Colors.blueGrey, fontFamily: 'Vazirmatn');
  static TextStyle verseTextStyle = TextStyle(
      fontSize: 40.sp,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      shadows: const [
        Shadow(
          offset: Offset(1, 1),
          blurRadius: 2.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ]);
}
