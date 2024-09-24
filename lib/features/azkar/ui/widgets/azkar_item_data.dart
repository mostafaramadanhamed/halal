import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halal/core/theme/styles.dart';

import '../../../../core/theme/colors.dart';

class AzkarItemData extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> detailedAzkar;
  const AzkarItemData(
      {super.key, required this.title, required this.detailedAzkar});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 56.h,
      shape: BeveledRectangleBorder(
        side: BorderSide(
          color: AppColors.kDarkPrimaryColor,
          width: 3.w,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      tileColor: Colors.white70,
      title: Text(
        title,
        style: TextStyles.azkarSubtitleTextStyle,
      ),
      onTap: () {},
    );
  }
}
