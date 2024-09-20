import 'package:shared_preferences/shared_preferences.dart';

import '../data/settings_constants.dart';
class  Settings{ 
static saveSettings ()async{
  final prefs = await SharedPreferences.getInstance();
  await prefs.setDouble('fontSize', SettingsConstants.arabicDefaultFontSize);
  await prefs.setDouble('mus7afFontSize', SettingsConstants.mus7afDefaultFontSize);
}

static  getSettings ()async{
  final prefs = await SharedPreferences.getInstance();
  SettingsConstants.arabicDefaultFontSize = prefs.getDouble('fontSize') ?? SettingsConstants.arabicDefaultFontSize;
  SettingsConstants.mus7afDefaultFontSize = prefs.getDouble('mus7afFontSize') ?? SettingsConstants.mus7afDefaultFontSize;
}

}