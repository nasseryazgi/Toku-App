import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../models/items_models.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Item> colors = const [
    Item(
      sound: 'black.wav',
      jpName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    Item(
      sound: 'brown.wav',
      jpName: 'Chairo',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    Item(
      sound: 'dusty yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    Item(
      sound: 'gray.wav',
      jpName: 'Gurē',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    Item(
      sound: 'green.wav',
      jpName: 'Midori',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    Item(
      sound: 'red.wav',
      jpName: 'Aka',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
    ),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Colors'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_outlined)),
        ),
        body: ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return Item_List(
                itemType: 'colors',
                number: colors[index],
                color: Colors.teal,
              );
            }),
      ),
    );
  }
}
