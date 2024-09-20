import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class AddingBasmala extends StatelessWidget {
  const AddingBasmala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(children: [
      Center(
        child: Text(
          '‏ ‏‏ ‏‏‏‏ ‏‏‏‏‏‏ ',
          style: TextStyles.basmlaTextStyle,
          //   textDirection: TextDirection.rtl,
        ),
      ),
    ]);
  }
}
