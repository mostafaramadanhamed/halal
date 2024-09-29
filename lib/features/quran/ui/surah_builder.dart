import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halal/core/theme/colors.dart';
import 'package:halal/core/theme/styles.dart';
import 'package:halal/features/quran/data/surah_list.dart';

import 'widgets/verses_list_view.dart';

class SurahBuilder extends StatelessWidget{
  final int verseId;
  final int surahLength;
  final int surahId;
  final String surahName;
  final dynamic content;

  const SurahBuilder(
      {super.key,
      required this.verseId,
      required this.surahId,
      required this.surahName,
      required this.surahLength,
      required this.content});

  Widget singleSurahBuilder(surahLength) {
    String fullSurah = '';
    num previousVerses = 0;
    if (surahId + 1 != 1) {
      for (int i = surahId - 1; i >= 0; i--) {
        previousVerses = previousVerses + surahList[i]['total_verses'];
      }
    }

    
      for (int i = 0; i < surahLength; i++) {
        fullSurah += (content[i + previousVerses]['aya_text']);
    
    }
    return SafeArea(
        child: VersesListView(fullSurah: fullSurah, surahId: surahId));
  }

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72.h,
        elevation: 0,
        centerTitle: true,
        title: Text(
          // 
          surahName,
          textAlign: TextAlign.center,
          style: TextStyles.font32BlackBold,
        ),
        backgroundColor: AppColors.kAppbarColor,
      ),
      body: singleSurahBuilder(surahLength),
    );
  }
}
