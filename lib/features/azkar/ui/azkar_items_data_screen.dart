import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halal/core/helpers/spacing_extensions.dart';
import 'package:halal/core/theme/styles.dart';

import 'widgets/azkar_item_data.dart';

class AzkarItemsDataScreen extends StatelessWidget {
  final List<Map<String, dynamic>> azkarItems;
  final String title;
  const AzkarItemsDataScreen(
      {super.key, required this.azkarItems, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyles.azkarSubtitleTextStyle,
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 18.h),
        separatorBuilder: (context, index) => 16.ph,
        itemCount: azkarItems.length,
        itemBuilder: (context, index) => AzkarItemData(
          detailedAzkar: azkarItems[index]['array'],
          title: azkarItems[index]['category'],
        ),
      ),
    );
  }
}
