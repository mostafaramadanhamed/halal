import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../logic/cubit.dart';

class Counter extends StatelessWidget {
  const Counter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 140.w,
      decoration: const BoxDecoration(
        color: AppColors.kSeb7aColor,
      ),
      child: Container(
        width: 100.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.r),
            topRight: Radius.circular(12.r),
            bottomLeft: Radius.circular(12.r),
            bottomRight: Radius.circular(12.r),
          ),
          color: Colors.white,
          border: Border.all(color: AppColors.kSeb7aCounterColor, width: 10.w),
        ),
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text(
              state.toString(),
              style: TextStyles.font32BlackBold,
            );
          },
        ),
      ),
    );
  }
}
