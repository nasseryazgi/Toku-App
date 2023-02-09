import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../models/items_models.dart';

class PhrasesPage extends StatelessWidget {
   PhrasesPage({Key? key}) : super(key: key);
  final List<Item> phrases =  [
    Item(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide ku',
      enName: 'dont forget to subscribe',
    ),
    Item(
      sound: 'i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu daisukid',
      enName: 'i love  programming',
    ),
    Item(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu ',
      enName: 'programming is easy',
    ),
    Item(
      sound: 'where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
    ),
    Item(
      sound: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name ?',
    ),
    Item(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    Item(
      sound: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling?',
    ),
    Item(
      sound: 'are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'are you coming?',
    ),
    Item(
      sound: 'yes_im_coming.wav',
      jpName: 'Hai watashi wa kite imasu',
      enName: 'yes i am coming',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_outlined)),backgroundColor :Colors.teal ,title: Text('Phrases') ,centerTitle: true,),
        body: ListView.builder(itemCount : phrases.length ,itemBuilder: (context , index){
          return Item_List(number: phrases[index], color: Colors.teal, itemType: 'phrases',);
        }),
      ),
    );
  }
}
