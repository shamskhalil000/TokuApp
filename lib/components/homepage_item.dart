import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, this.color, this.text, this.OnTap});
  String? text;
  Color? color;

  VoidCallback? OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 60,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
