import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../logic/cubit.dart';

class IncreamentCounterButton extends StatelessWidget {
  const IncreamentCounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<CounterCubit>().increment(),
      child: Material(
        elevation: 11,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
        shadowColor: AppColors.kSeb7aColor,
        color: Colors.transparent,
        child: CircleAvatar(
          radius: 40.r,
          backgroundColor: AppColors.kSeb7aCounterColor,
        ),
      ),
    );
  }
}
