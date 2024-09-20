import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halal/features/quran/data/load_json_data.dart';
import 'package:halal/features/quran/ui/surah_index.dart';
import 'features/settings/domain/settings.dart';

class HalalApp extends StatefulWidget {
  const HalalApp({super.key});

  @override
  State<HalalApp> createState() => _HalalAppState();
}

class _HalalAppState extends State<HalalApp> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await QuranDataController.readJson();
      await Settings.getSettings();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'quran',
      ),
      debugShowCheckedModeBanner: false,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      home: const SurahIndex(),
    );
  }
}
