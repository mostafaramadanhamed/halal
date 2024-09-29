import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halal/core/helpers/spacing_extensions.dart';
import 'package:halal/features/quran/domain/verse_bookmark.dart';
import 'package:halal/features/quran/ui/widgets/adding_basmla.dart';
import 'package:halal/features/quran/ui/widgets/verse_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class VerseByVerseView extends StatelessWidget {
  final int surahId;
  final num previousIndex;
  final dynamic content;
  final int surahLength;
  final ItemScrollController itemScrollController;
  final ItemPositionsListener itemPositionsListener;
  const VerseByVerseView(
      {super.key,
      required this.surahId,
      required this.surahLength,
      required this.itemScrollController,
      required this.itemPositionsListener,
      this.content,
      required this.previousIndex});

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            (index != 0) || (surahId == 0) || (surahId == 8)
                ? const Text('')
                : Column(
                    children: [
                      const AddingBasmala(),
                      16.ph,
                    ],
                  ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8.0.h,
                horizontal: 12.w,
              ),
              child: VerseBuilder(
                currentIndex: index,
                previousIndex: previousIndex,
                content: content,
              ),
            ),
          ],
        );
      },
      itemScrollController: itemScrollController,
      itemPositionsListener: itemPositionsListener,
      itemCount: surahLength,
    );
  }
}
