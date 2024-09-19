import 'package:flutter/material.dart';

class HalalApp extends StatelessWidget {
  const HalalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),  
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),

    );
  }
}