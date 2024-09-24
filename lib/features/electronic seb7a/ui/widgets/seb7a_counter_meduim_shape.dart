import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import 'seb7a_counter.dart';

class Seb7aCounterMeduimShape extends StatelessWidget {
  const Seb7aCounterMeduimShape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80.h,
          width: 45.w,
          decoration: const BoxDecoration(
            color: AppColors.kSeb7aColor,
          ),
        ),
        const Counter(),
        Container(
          height: 80.h,
          width: 45.w,
          decoration: const BoxDecoration(
            color: AppColors.kSeb7aColor,
          ),
        ),
      ],
    );
  }
}
