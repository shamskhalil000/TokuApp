import 'package:flutter/material.dart';
import 'package:tokuapp/screens/home_page.dart';

void main() {
  runApp(tokuApp());
}

class tokuApp extends StatelessWidget {
  const tokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
