import 'package:flutter/material.dart';
import 'package:tokuapp/models/data.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.number,
    required this.color,
    required this.type,
  });
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
          Container(
              color: Color(0xFFFFF2CD),
              child: Image.asset(
                number.image!,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.Jpname,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  number.Enname,
                  style: TextStyle(color: Colors.white),
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
