import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/items_models.dart';

class Item_List extends StatelessWidget {
  const Item_List({required this.color,
    required this.number, required this.itemType,});
  final Item number;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return number.image !=null ? Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xfff8acbbb),
            child: Image.asset(number.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // بياخذ كل المساحة المتاحة على ال y
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(number.jpName,
                    style:
                    const TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: IconButton(
              onPressed: () {
                AudioCache player =
                AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(number.sound);
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    ) :  Container(
      height: 100,
      color: color,
      child: Row(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // بياخذ كل المساحة المتاحة على ال y
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(number.jpName,
                    style:
                    const TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: IconButton(
              onPressed: () {
                AudioCache player =
                AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(number.sound);
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
