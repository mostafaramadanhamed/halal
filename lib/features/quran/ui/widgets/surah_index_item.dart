import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/utils/constants.dart';
import '../../data/surah_list.dart';
import 'meccan_or_median_surah.dart';
import 'surah_builder.dart';

class SurahIndexItem extends StatelessWidget {
  const SurahIndexItem({
    super.key,
    required this.quran,
    required this.index,
  });
  final int index;
  final dynamic quran;

  @override
  Widget build(BuildContext context) {
    return ListTile(
    
      minTileHeight: 56.h,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      tileColor: AppColors.kPrimaryColor,
      minLeadingWidth: 3,
      subtitle: Text(
        "عدد الآيات : ${surahList[index]['total_verses']}",
        style: TextStyles.totalVersesTextStyle,
      ),
      trailing: MeccanOrMedianSurah(surahType: surahList[index]['type']),
      title: Text(
        surahList[index]['name'],
        style: TextStyles.font25BlackMeduim.copyWith(fontFamily: 'Vazirmatn'),
      ),
      onTap: () {
        Constants.fabIsTaped = false;
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SurahBuilder(
                    content: quran[0],
                    surahId: index,
                    surahName: surahList[index]['name'],
                    surahLength: surahList[index]['total_verses'],
                    verseId: 0,
                  )),
        );
      },
    );
  }
}
