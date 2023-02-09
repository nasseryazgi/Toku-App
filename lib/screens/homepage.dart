import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp1/screens/colors_page.dart';
import 'package:tokuapp1/screens/phrases_page.dart';

import '../components/categroy_item.dart';
import 'family_Members.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Toku App'),
          centerTitle: true,
        ),
        body: Container(
          color: Color(0xfff8acbbb),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image( height: 190 ,image: AssetImage('assets/images/icons_homepage/form.png')),
              Categroy(IconImage: 'assets/images/icons_homepage/numbers.png',
                  text: 'Numbers',
                  color: Colors.teal,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return NumbersPage();
                    }));
                  }),
              Categroy(
                  IconImage: 'assets/images/icons_homepage/family.png' ,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return FamilyPage();
                  }));
                },
                text: 'Family Members',
                color: Colors.teal,
              ),
              Categroy(
                IconImage: 'assets/images/icons_homepage/colour.png' ,
                onTap: (){
                  Navigator.push((context), MaterialPageRoute(builder: (context){
                    return ColorsPage();
                  }));
                },
                text: 'Colors',
                color: Colors.teal,
              ),
              Categroy(
                IconImage: 'assets/images/icons_homepage/lets-go.png' ,

                onTap: (){
                  Navigator.push(context, MaterialPageRoute( builder:(context){
                    return PhrasesPage();
                  }));
                },
                text: 'Phrases',
                color: Colors.teal,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
