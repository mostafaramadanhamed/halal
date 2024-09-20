import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VerseBookmarkController {
 static int bookmarkedVerse = 1;
static int bookmarkedSura = 1;
   static  bookmarkVerse(int surah, int verse) async {
    final pref = await SharedPreferences.getInstance();

    await pref.setInt("surah_no", surah);
    await pref.setInt("verse_no", verse);
  }
  static readBookmark() async {
  debugPrint("read book mark called");
  final prefs = await SharedPreferences.getInstance();
  try {
    bookmarkedVerse = prefs.getInt('verse_no')!;
    bookmarkedSura = prefs.getInt('surah_no')!;
    return true;
  } catch (e) {
    return false;
  }
}

}