import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MeccanOrMedianSurah extends StatelessWidget {
  final String surahType;
  const MeccanOrMedianSurah({super.key, required this.surahType});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      surahType == 'meccan' ? 'assets/svg/kaaba.svg' : 'assets/svg/Group.svg',
      height: 45.h,
      width: 45.w,
      // fit: BoxFit.cover,
    );
  }
}
