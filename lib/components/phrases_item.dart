import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/models/data.dart';

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
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
                Text(
                  number.Enname,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AudioPlayer player = AudioPlayer();
              player.play(AssetSource('sounds/$type/${number.sound}'));
            },
            icon: const Icon(Icons.play_arrow, color: Colors.white, size: 32),
          ),
        ],
      ),
    );
  }
}
