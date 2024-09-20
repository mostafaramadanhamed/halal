import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halal/halal_app.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();

    await EasyLocalization.ensureInitialized();

  runApp(
     EasyLocalization(
        supportedLocales: [const Locale('en', 'US'), const Locale('ar', 'EG')],
        path: 'assets/translations', // <-- change the path of the translation files
       saveLocale: true,
       startLocale: const Locale('ar', 'EG'),
     child:   const HalalApp()),
  );
}
