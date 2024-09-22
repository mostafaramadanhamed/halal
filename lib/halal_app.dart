import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halal/core/theme/colors.dart';
import 'package:halal/features/quran/data/load_json_data.dart';
import 'package:halal/features/quran/ui/surah_index.dart';
import 'package:halal/features/settings/ui/settings_screen.dart';
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
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Halal',
        theme: ThemeData(
          useMaterial3: false,
          primarySwatch: Colors.blueGrey,
          fontFamily: 'quran',
        ),
        debugShowCheckedModeBanner: false,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        home: const SettingsScreen(),
      ),
    );
  }
}
