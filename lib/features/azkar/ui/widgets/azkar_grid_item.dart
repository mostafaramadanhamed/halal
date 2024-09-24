import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../data/azkar_categories.dart';
import '../azkar_items_data_screen.dart';

class AzkarGridItem extends StatelessWidget {
  final int index;
  final List<Map<String, dynamic>> data;
  const AzkarGridItem({
    super.key,
    required this.index,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return AzkarItemsDataScreen(
            azkarItems: data,
            title: azkarCategories[index]['title'],
          );
        }));
      },
      child: Card(
        elevation: 4,
        color: AppColors.kPrimaryColor,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Center(
          child: Text(
            azkarCategories[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyles.azkarTitleTextStyle,
          ),
        ),
      ),
    );
  }
}
