import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halal/core/helpers/spacing_extensions.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import 'increament_counter_button.dart';

class Seb7aIcereamentShape extends StatelessWidget {
  const Seb7aIcereamentShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: 230.w,
      decoration: BoxDecoration(
          color: AppColors.kSeb7aColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(32.r),
            topLeft: Radius.circular(32.r),
            bottomLeft: Radius.circular(55.r),
            bottomRight: Radius.circular(55.r),
          )),
      child: Column(
        children: [
          const IncreamentCounterButton(),
          4.ph,
          Text(
            'عداد ',
            style: TextStyles.font16BlackBold.copyWith(fontSize: 24.sp),
          )
        ],
      ),
    );
  }
}
