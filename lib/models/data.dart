import 'package:flutter/material.dart';

class Data {
  final String? image;
  final String Jpname;
  final String Enname;
  final String sound;
  const Data({
    required this.sound,
    required this.Jpname,
    required this.Enname,
    @required this.image,
  });
}
