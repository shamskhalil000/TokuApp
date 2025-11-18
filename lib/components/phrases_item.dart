import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/models/data.dart';
import 'package:tokuapp/screens/phrases.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem(
      {super.key,
      required this.number,
      required this.color,
      required this.type});
  final Data number;
  final Color color;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.Jpname,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                Text(
                  number.Enname,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AudioPlayer player = AudioPlayer();
              player.play(AssetSource('sounds/$type/${number.sound}'));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white, size: 32),
          ),
        ],
      ),
    );
  }
}
