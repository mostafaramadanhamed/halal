import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halal/features/azkar/data/azkar_categories.dart';

import 'widgets/azkar_grid_item.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.2,
      ),
      itemCount: azkarCategories.length,
      itemBuilder: (context, index) {
        return AzkarGridItem(
          data: azkarCategories[index]['data'],
          index: index,
        );
      },
    );
  }
}
