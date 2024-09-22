import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halal/core/helpers/spacing_extensions.dart';

import '../../data/surah_list.dart';

import 'surah_index_item.dart';

class SurahIndexListView extends StatelessWidget {
  final dynamic quran;
  const SurahIndexListView({super.key, this.quran});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.0.w,
        right: 10.0.w,
        top: 12.0.h,
      ),
      child: ListView.separated(
        separatorBuilder: (context, index) => 12.ph,
        itemCount: surahList.length,
        itemBuilder: (context, index) {
          return SurahIndexItem(
            quran: quran,
            index: index,
          );
        },
      ),
    );
  }
}
