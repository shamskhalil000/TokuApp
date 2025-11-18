import 'package:flutter/material.dart';
import 'package:tokuapp/models/data.dart';
import 'package:tokuapp/components/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Data> numbers = const [
    Data(
        image: 'assets/images/numbers/number_one.png',
        Jpname: "ichi",
        Enname: "one",
        sound: 'number_one_sound.mp3'),
    Data(
        image: 'assets/images/numbers/number_two.png',
        Jpname: "ni",
        Enname: "two",
        sound: 'number_two_sound.mp3'),
    Data(
        image: 'assets/images/numbers/number_three.png',
        Jpname: "san",
        Enname: "three",
        sound: 'number_three_sound.mp3'),
    Data(
        image: 'assets/images/numbers/number_four.png',
        Jpname: "shi",
        Enname: "four",
        sound: 'number_four_sound.mp3'),
    Data(
        image: 'assets/images/numbers/number_five.png',
        Jpname: "go",
        Enname: "five",
        sound: 'number_five_sound.mp3'),
    Data(
        image: 'assets/images/numbers/number_six.png',
        Jpname: "roku",
        Enname: "six",
        sound: 'number_six_sound.mp3'),
    Data(
        image: 'assets/images/numbers/number_seven.png',
        Jpname: "sebun",
        Enname: "seven",
        sound: 'number_seven_sound.mp3'),
    Data(
        image: 'assets/images/numbers/number_eight.png',
        Jpname: "hachi",
        Enname: "eight",
        sound: 'number_eight_sound.mp3'),
    Data(
        image: 'assets/images/numbers/number_nine.png',
        Jpname: "ku",
        Enname: "nine",
        sound: 'number_nine_sound.mp3'),
    Data(
        image: 'assets/images/numbers/number_ten.png',
        Jpname: "ju",
        Enname: "ten",
        sound: 'number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Numbers',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF4a322a),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Item(
              number: numbers[index],
              color: Colors.orange,
              type: 'numbers',
            );
          },
        ));
  }
}

// List<Widget> getlist(List<Number> numbers) {
//   List<Widget> itemlist = [];
//   for (int i = 0; i < numbers.length; i++) {
//     itemlist.add(NumbersItem(number: numbers[i]));
//   }
//   return itemlist;
// }
