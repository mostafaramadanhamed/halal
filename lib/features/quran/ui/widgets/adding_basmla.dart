import 'package:flutter/material.dart';
import 'package:halal/features/settings/data/settings_constants.dart';

import '../../../../core/theme/styles.dart';

class AddingBasmala extends StatelessWidget {
  const AddingBasmala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '‏ ‏‏ ‏‏‏‏ ‏‏‏‏‏‏ ',
        style: TextStyles.basmlaTextStyle.copyWith(
          fontSize: SettingsConstants.arabicDefaultFontSize,
        ),
      ),
    );
  }
}
