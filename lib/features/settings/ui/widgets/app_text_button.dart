import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/styles.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String textButton;
  const AppTextButton({super.key, this.onPressed, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            minimumSize: WidgetStatePropertyAll(Size(100.w, 55.h)),
            backgroundColor:
                const WidgetStatePropertyAll(Color.fromARGB(255, 33, 102, 159)),
            shape: WidgetStatePropertyAll(
              BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            )),
        onPressed: onPressed,
        child: Text(
          textButton,
          style: TextStyles.buttonTextStyle,
        ));
  }
}
