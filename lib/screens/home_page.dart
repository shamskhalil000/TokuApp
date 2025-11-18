import 'package:flutter/material.dart';
import 'package:tokuapp/components/homepage_item.dart';
import 'package:tokuapp/screens/colors_page.dart';
import 'package:tokuapp/screens/numbers_page.dart';
import 'package:tokuapp/screens/familymembers_page.dart';
import 'package:tokuapp/screens/phrases.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfff4d9),
      appBar: AppBar(
        backgroundColor: Color(0xFF4a322a),
        title: Text(
          'Toku',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          //nembers
          Category(
            text: 'Numbers',
            color: Colors.orange,
            OnTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
          ),

          //family members
          Category(
            text: 'Family Members',
            color: Colors.green,
            OnTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilymembersPage();
              }));
            },
          ),
          //COLORS
          Category(
            OnTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
            text: 'Colors',
            color: Colors.purple,
          ),
          //PHRASES
          Category(
            OnTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Phrases();
              }));
            },
            text: 'Phrases',
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}
