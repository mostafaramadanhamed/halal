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
            PopupMenuButton(
                child: Padding(
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
                itemBuilder: (context) => [
                      PopupMenuItem(
                        onTap: () {
                          VerseBookmarkController.bookmarkVerse(
                              surahId + 1, index);
                        },
                        child: const Row(
                          children: [
                            Icon(
                              Icons.bookmark_add,
                              color: Color.fromARGB(255, 56, 115, 59),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('حفظ'),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.share,
                              color: Color.fromARGB(255, 56, 115, 59),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('مشاركة'),
                          ],
                        ),
                      ),
                    ]),
          ],
        );
      },
      itemScrollController: itemScrollController,
      itemPositionsListener: itemPositionsListener,
      itemCount: surahLength,
    );
  }
}
