import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:halal/core/theme/styles.dart';
import 'package:halal/core/utils/constants.dart';
import 'package:halal/features/quran/data/surah_list.dart';
import 'package:halal/features/quran/ui/widgets/verse_by_verse_view.dart';
import 'package:halal/features/quran/ui/widgets/verses_list_view.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SurahBuilder extends StatefulWidget {
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

  @override
  State<SurahBuilder> createState() => _SurahBuilderState();
}

class _SurahBuilderState extends State<SurahBuilder> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  bool viewed = true;

  void jumbToVerse() {
    if (Constants.fabIsTaped) {
      itemScrollController.scrollTo(
        index: widget.verseId - 1,
        duration: const Duration(
          milliseconds: 2000,
        ),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => jumbToVerse());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  SafeArea singleSurahBuilder(surahLength) {
    String fullSurah = '';
    num previousVerses = 0;
    if (widget.surahId + 1 != 1) {
      for (int i = widget.surahId - 1; i >= 0; i--) {
        previousVerses =
            previousVerses + surahList[i]['total_verses'];
        //print(widget.surahLength);
       // print(widget.content[1]['aya_text_emlaey']);
      }
    }

    if (viewed)
      for (int i = 0; i < surahLength; i++) {
        fullSurah += (widget.content[i + previousVerses]['aya_text']);
     //   print("object1 ${widget.content[0]['aya_text_emlaey']}");
      }

    return SafeArea(
      child: Container(
        color: const Color.fromARGB(255, 253, 251, 240),
        child: viewed
            ? VersesListView(fullSurah: fullSurah, surahId: widget.surahId)
            : VerseByVerseView(
                surahId: widget.surahId,
                previousIndex: previousVerses,
                content: widget.content,
                surahLength: surahLength,
                itemScrollController: itemScrollController,
                itemPositionsListener: itemPositionsListener),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Tooltip(
          message: 'Mushaf Mode',
          child: TextButton(
            child: const Icon(
              Icons.chrome_reader_mode,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                viewed = !viewed;
              });
            },
          ),
        ),
        centerTitle: true,
        title: Text(
          // widget.
          widget.surahName,
          textAlign: TextAlign.center,
          style: TextStyles.verseTextStyle,
        ),
        backgroundColor: const Color.fromARGB(255, 56, 115, 59),
      ),
      body: singleSurahBuilder(widget.surahLength),
    );
  }
}
