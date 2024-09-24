import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';

class Seb7aTopShape extends StatelessWidget {
  const Seb7aTopShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 230.w,
      decoration: BoxDecoration(
          color: AppColors.kSeb7aColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(55.r),
            topRight: Radius.circular(55.r),
          )),
    );
  }
}
