import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.color, this.text, this.OnTap});
  String? text;
  Color? color;
  VoidCallback? OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        padding: EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 60,
        color: color,
        child: Text(
          text!,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
