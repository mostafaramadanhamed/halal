import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halal/core/helpers/spacing_extensions.dart';
import 'package:halal/core/theme/styles.dart';

import '../../../core/theme/colors.dart';

class AzkarDetailsScreen extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> azkarDetails;
  const AzkarDetailsScreen(
      {super.key, required this.azkarDetails, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyles.azkarSubtitleTextStyle,
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 18.h),
        separatorBuilder: (context, index) => 16.ph,
        itemCount: azkarDetails.length,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.kDarkPrimaryColor,
              width: 3.w,
            ),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            children: [
              Container(
                height: 30.h,
                decoration: BoxDecoration(
                  color: AppColors.kDarkPrimaryColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Text(
                     '${azkarDetails[index]['count']} ${azkarDetails[index]['count'] > 2
                     &&azkarDetails[index]['count'] <10 ? 'مرات' 
                     : 'مرة'}',
                    style: TextStyles.azkarSubtitleTextStyle
                        .copyWith(color: AppColors.kAzkarTitleColor),
                  ),
                ),
              ),
              8.ph,
              Text(
                azkarDetails[index]['text'],
                style: TextStyles.azkarSubtitleTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
