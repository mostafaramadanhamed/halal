import 'package:flutter/material.dart';
import 'package:halal/core/theme/colors.dart';
import 'package:halal/core/theme/styles.dart';
import '../data/settings_constants.dart';
import '../domain/settings.dart';
import 'widgets/app_text_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsState();
}

class _SettingsState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الإعدادات'),
        centerTitle: true,
        backgroundColor: AppColors.kAppbarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('حجم خط التطبيق:', style: TextStyles.settingsTextStyle),
              Slider(
                activeColor: const Color.fromARGB(255, 33, 102, 159),
                inactiveColor: AppColors.kPrimaryColor,
                value: SettingsConstants.arabicDefaultFontSize,
                min: 20,
                max: 35,
                onChanged: (value) {
                  setState(() {
                    SettingsConstants.arabicDefaultFontSize = value;
                  });
                },
              ),
              Text(
                "‏ ‏‏ ‏‏‏‏ ‏‏‏‏‏‏ ‏",
                style: TextStyle(
                    fontFamily: 'quran',
                    fontSize: SettingsConstants.arabicDefaultFontSize),
                textDirection: TextDirection.rtl,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Divider(),
              ),
              Text('حجم خط المصحف:', style: TextStyles.settingsTextStyle),
              Slider(
                value: SettingsConstants.mus7afDefaultFontSize,
                activeColor: const Color.fromARGB(255, 33, 102, 159),
                inactiveColor: AppColors.kPrimaryColor,
                min: 20,
                max: 50,
                onChanged: (value) {
                  setState(() {
                    SettingsConstants.mus7afDefaultFontSize = value;
                  });
                },
              ),
              Text(
                "‏ ‏‏ ‏‏‏‏ ‏‏‏‏‏‏ ‏",
                style: TextStyle(
                    fontFamily: 'quran',
                    fontSize: SettingsConstants.mus7afDefaultFontSize),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppTextButton(
                    onPressed: () {
                      setState(() {
                        SettingsConstants.arabicDefaultFontSize = 28;
                        SettingsConstants.mus7afDefaultFontSize = 40;
                      });
                      Settings.saveSettings();
                    },
                    textButton: 'إعادة تعيين',
                  ),
                  AppTextButton(
                    onPressed: () {
                      Settings.saveSettings();
                      // todo add snackbar
                      Navigator.pop(context);
                      setState(() {});
                    },
                    textButton: 'حفظ',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
