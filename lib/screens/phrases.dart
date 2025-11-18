import 'package:flutter/material.dart';
import 'package:tokuapp/components/item.dart';
import 'package:tokuapp/components/phrases_item.dart';
import 'package:tokuapp/models/data.dart';

class Phrases extends StatelessWidget {
  Phrases({super.key});
  List<Data> items = const [
    Data(
        Jpname: "kimasu ka?",
        Enname: "Are you coming?",
        sound: 'are_you_coming.wav'),
    Data(
        Jpname: "Hai,watashi wa ikimasu.",
        Enname: "Yes I am coming",
        sound: 'yes_im_coming.wav'),
    Data(
        Jpname: "Tōroku o wasurenaide kudasai.",
        Enname: "Do not forget to subdcribe",
        sound: 'dont_forget_to_subscribe.wav'),
    Data(
        Jpname: "Kibun wa dō desu ka?",
        Enname: "How are you feeling",
        sound: 'how_are_you_feeling.wav'),
    Data(
        Jpname: "Watashi wa Anime ga daisuki desu",
        Enname: "I love anime",
        sound: 'i_love_anime.wav'),
    Data(
        Jpname: "Watashi wa Puroguramingu daisuki ",
        Enname: "I love programming",
        sound: 'i_love_programming.wav'),
    Data(
        Jpname: "Puroguramingu wa kantan desu",
        Enname: "programming is easy",
        sound: 'programming_is_easy.wav'),
    Data(
        Jpname: "Namae wa nan desu ka",
        Enname: "What is your name?",
        sound: 'what_is_your_name.wav'),
    Data(
        Jpname: "Doko iku no?",
        Enname: "where are you going?",
        sound: 'where_are_you_going.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Phrases',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF4a322a),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              number: items[index],
              color: Colors.lightBlue,
              type: 'phrases',
            );
          },
        ));
  }
}
