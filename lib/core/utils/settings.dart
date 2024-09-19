import 'package:halal/core/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
class  Settings{ 
Future saveSettings ()async{
  final prefs = await SharedPreferences.getInstance();
  await prefs.setDouble('fontSize', Constants.arabicDefaultFontSize);
  await prefs.setDouble('mus7afFontSize', Constants.mus7afDefaultFontSize);
}

Future getSettings ()async{
  final prefs = await SharedPreferences.getInstance();
  Constants.arabicDefaultFontSize = prefs.getDouble('fontSize') ?? Constants.arabicDefaultFontSize;
  Constants.mus7afDefaultFontSize = prefs.getDouble('mus7afFontSize') ?? Constants.mus7afDefaultFontSize;
}

}