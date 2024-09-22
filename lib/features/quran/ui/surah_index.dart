import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halal/core/helpers/spacing_extensions.dart';
import 'package:halal/core/theme/colors.dart';
import 'package:halal/features/quran/data/load_json_data.dart';
import 'package:halal/features/quran/domain/verse_bookmark.dart';
import 'package:halal/features/quran/ui/widgets/surah_index_list_view.dart';
import 'package:halal/features/quran/ui/widgets/verse_shape.dart';

import '../../../core/theme/styles.dart';
import '../../../core/utils/constants.dart';
import '../data/surah_list.dart';
import 'widgets/surah_builder.dart';

class SurahIndex extends StatefulWidget {
  const SurahIndex({Key? key}) : super(key: key);

  @override
  State<SurahIndex> createState() => _SurahIndexState();
}

class _SurahIndexState extends State<SurahIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          'الفهرس',
          style: TextStyles.font30BlackMeduim,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Go to bookmark',
        backgroundColor: const Color.fromARGB(255, 43, 134, 208),
        onPressed: () async {
          Constants.fabIsTaped = true;
          if (await VerseBookmarkController.readBookmark() == true) {
            if (!context.mounted) return;

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SurahBuilder(
                          content: QuranDataController.quran[0],
                          surahId: VerseBookmarkController.bookmarkedSura - 1,
                          surahName: surahList[
                                  VerseBookmarkController.bookmarkedSura - 1]
                              ['name'],
                          verseId: VerseBookmarkController.bookmarkedVerse,
                          surahLength: surahList[
                                  VerseBookmarkController.bookmarkedSura - 1]
                              ['total_verses'],
                        )));
          }
        },
        child: const Icon(Icons.bookmark),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: FutureBuilder(
        future: QuranDataController.readJson(),
        builder: (
          BuildContext context,
          AsyncSnapshot snapshot,
        ) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return const Text('Error');
            } else if (snapshot.hasData) {
              return SurahIndexListView(quran: snapshot.data);
            } else {
              return const Text('Empty data');
            }
          } else {
            return Text('State: ${snapshot.connectionState}');
          }
        },
      ),
    );
  }
}
