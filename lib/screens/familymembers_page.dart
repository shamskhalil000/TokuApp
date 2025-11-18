import 'package:flutter/material.dart';
import 'package:tokuapp/components/item.dart';
import 'package:tokuapp/models/data.dart';

class FamilymembersPage extends StatelessWidget {
  const FamilymembersPage({super.key});
  final List<Data> familymembers = const [
    Data(
        image: 'assets/images/family_members/family_grandfather.png',
        Jpname: "ojisan",
        Enname: "grandfather",
        sound: 'grand father.wav'),
    Data(
        image: 'assets/images/family_members/family_grandmother.png',
        Jpname: "sobo",
        Enname: "grandmother",
        sound: 'grand mother.wav'),
    Data(
        image: 'assets/images/family_members/family_father.png',
        Jpname: "chichioya",
        Enname: "father",
        sound: 'father.wav'),
    Data(
        image: 'assets/images/family_members/family_mother.png',
        Jpname: "hahaoya",
        Enname: "mother",
        sound: 'mother.wav'),
    Data(
        image: 'assets/images/family_members/family_older_brother.png',
        Jpname: "nisan",
        Enname: "big brother",
        sound: 'older bother.wav'),
    Data(
        image: 'assets/images/family_members/family_older_sister.png',
        Jpname: "ane",
        Enname: "big sister",
        sound: 'older sister.wav'),
    Data(
        image: 'assets/images/family_members/family_son.png',
        Jpname: "musuke",
        Enname: "son",
        sound: 'son.wav'),
    Data(
        image: 'assets/images/family_members/family_daughter.png',
        Jpname: "musume",
        Enname: "daughter",
        sound: 'daughter.wav'),
    Data(
        image: 'assets/images/family_members/family_younger_brother.png',
        Jpname: "otooto",
        Enname: "young son",
        sound: 'younger brohter.wav'),
    Data(
        image: 'assets/images/family_members/family_younger_sister.png',
        Jpname: "imooto",
        Enname: "young sister",
        sound: 'younger sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Family Members',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF4a322a),
        ),
        body: ListView.builder(
          itemCount: familymembers.length,
          itemBuilder: (context, index) {
            return Item(
              number: familymembers[index],
              color: Colors.green,
              type: 'family_members',
            );
          },
        ));
  }
}
