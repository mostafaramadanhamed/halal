import 'dart:convert';

import 'package:flutter/services.dart';

class QuranDataController{
 static  List arabic =[];
static List quran =[];

static  readJson ()async{
  final String response =await rootBundle.loadString("assets/quran/hafs_smart_v8.json");
  final data=json.decode(response);
  arabic=data["quran"];
  return quran=[arabic];
}
}