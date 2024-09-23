import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halal/core/helpers/spacing_extensions.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import 'decreament_counter_button.dart';
import 'reset_counter_button.dart';

class Seb7aDecreamentResetShape extends StatelessWidget {
  const Seb7aDecreamentResetShape({super.key, });

  @override
  Widget build(BuildContext context) {
    return      Container(
          height: 80.h,
          width: 240.w,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 233, 109, 255),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.r),
                bottomRight: Radius.circular(16.r),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  8.ph,
                  const ResetCounterButton(),
                  4.ph,
                  Text(
                    'تصفير ',
                    style: TextStyles.font16BlackBold,
                  )
                ],
              ),
              Column(
                children: [
                  8.ph,
                   const DecreamentCounterButton(),
                  4.ph,
                  Text(
                    '-1',
                    style: TextStyles.font16BlackBold,
                  )
                ],
              ),
            ],
          ),
        );
  }
}
