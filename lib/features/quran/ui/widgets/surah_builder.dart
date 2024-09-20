import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SurahBuilder extends StatefulWidget {
  final int verse;
  final String surah;

  const SurahBuilder({super.key, required this.surah, required this.verse});

  @override
  State<SurahBuilder> createState() => _SurahBuilderState();
}

class _SurahBuilderState extends State<SurahBuilder> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  bool fabIsTaped = false;
  bool viewed = true;

  void jumbToVerse() {
   if(fabIsTaped) {itemScrollController.scrollTo(
      index: widget.verse,
      duration: const Duration(milliseconds: 2000,),
      curve: Curves.easeInOutCubic,
    );}
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

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
