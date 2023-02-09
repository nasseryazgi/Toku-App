import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp1/models/items_models.dart';

import '../components/list_item.dart';

class NumbersPage extends StatelessWidget {
   NumbersPage({Key? key}) : super(key: key);
  List<Item> ItemNumbers = const [
     Item(
        image: 'assets/images/numbers/number_one.png',
        enName: 'one',
        jpName: 'ichi',
        sound: 'number_one_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_two.png',
        enName: 'two',
        jpName: 'Ni',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_three.png',
        enName: 'three',
        jpName: 'San',
        sound: 'number_three_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_four.png',
        enName: 'four',
        jpName: 'Shi',
        sound: 'number_four_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_five.png',
        enName: 'five',
        jpName: 'Go',
        sound: 'number_five_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_six.png',
        enName: 'six',
        jpName: 'Roku',
        sound: 'number_six_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_seven.png',
        enName: 'seven',
        jpName: 'Sebun',
        sound: 'number_seven_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_eight.png',
        enName: 'eight',
        jpName: 'hachi',
        sound: 'number_eight_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_nine.png',
        enName: 'nine',
        jpName: 'Kyu',
        sound: 'number_nine_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_ten.png',
        enName: 'ten',
        jpName: 'Ju',
        sound: 'number_ten_sound.mp3'),
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_outlined)),
          backgroundColor: Colors.teal,
          title: Text('Numbers'),
          centerTitle: true,
        ),
        body: ListView.builder(itemBuilder: (context , index){
          return Item_List(color: Colors.teal,itemType:'numbers' , number: ItemNumbers[index]);
        } ,itemCount: ItemNumbers.length,),
      ),
    );
  }
}
