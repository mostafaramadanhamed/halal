import 'package:flutter/material.dart';
import 'package:halal/features/quran/data/load_json_data.dart';
import 'package:halal/features/quran/domain/verse_bookmark.dart';
import 'package:halal/features/quran/ui/widgets/verse_shape.dart';

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
      floatingActionButton: FloatingActionButton(
        tooltip: 'Go to bookmark',
        backgroundColor: const Color.fromARGB(255, 43, 134, 208),
        onPressed: () async {
          Constants.fabIsTaped = true;
          if (await VerseBookmarkController.readBookmark() == true) {
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          //"القرآن",
          "Quran",
          style: TextStyle(
              //fontFamily: 'quran',
              fontSize: 35,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 2.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ]),
        ),
        backgroundColor: const Color.fromARGB(255, 56, 115, 59),
      ),
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
              return indexCreator(snapshot.data, context);
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

  Container indexCreator(quran, context) {
    return Container(
      color: const Color.fromARGB(255, 221, 250, 236),
      child: ListView(
        children: [
          for (int i = 0; i < 114; i++)
            Container(
              color: i % 2 == 0
                  ? const Color.fromARGB(255, 253, 247, 230)
                  : const Color.fromARGB(255, 253, 251, 240),
              child: TextButton(
                child: Row(
                  children: [
                    Text(
                      surahList[i]['name'],
                      style: const TextStyle(
                          fontSize: 30,
                          color: Colors.black87,
                          shadows: [
                            Shadow(
                              offset: Offset(.5, .5),
                              blurRadius: 1.0,
                              color: Color.fromARGB(255, 130, 130, 130),
                            )
                          ]),
                      // textDirection: TextDirection.rtl,
                    ),
                    const Expanded(child: SizedBox()),
                    VerseShape(verseNumber: i),
                  ],
                ),
                onPressed: () {
                  Constants.fabIsTaped = false;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SurahBuilder(
                              content: quran[0],
                              surahId: i,
                              surahName: surahList[i]['name'],
                              surahLength: surahList[i]['total_verses'],
                              verseId: 0,
                            )),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
