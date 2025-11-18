import 'package:flutter/material.dart';
import 'package:tokuapp/components/item.dart';
import 'package:tokuapp/models/data.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Data> numbers = const [
    Data(
        image: 'assets/images/colors/color_black.png',
        Jpname: "kuro",
        Enname: "black",
        sound: 'black.wav'),
    Data(
        image: 'assets/images/colors/color_brown.png',
        Jpname: "chairo",
        Enname: "brown",
        sound: 'brown.wav'),
    Data(
        image: 'assets/images/colors/color_dusty_yellow.png',
        Jpname: "hokori ppoi",
        Enname: "dusty yellow",
        sound: 'dusty yellow.wav'),
    Data(
        image: 'assets/images/colors/color_gray.png',
        Jpname: "haiiro",
        Enname: "gray",
        sound: 'gray.wav'),
    Data(
        image: 'assets/images/colors/color_green.png',
        Jpname: "midori",
        Enname: "green",
        sound: 'green.wav'),
    Data(
        image: 'assets/images/colors/color_red.png',
        Jpname: "aka",
        Enname: "red",
        sound: 'red.wav'),
    Data(
        image: 'assets/images/colors/color_white.png',
        Jpname: "shiro",
        Enname: "white",
        sound: 'white.wav'),
    Data(
        image: 'assets/images/colors/yellow.png',
        Jpname: "kiiro",
        Enname: "yellow",
        sound: 'yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Colors',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF4a322a),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Item(
              number: numbers[index],
              color: Colors.purple,
              type: 'colors',
            );
          },
        ));
  }
}
