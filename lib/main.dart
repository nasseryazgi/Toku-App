import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tokuapp1/screens/homepage.dart';
import 'package:tokuapp1/screens/numbers_page.dart';

void main() {
  runApp(TokuApp1());
}
class TokuApp1 extends StatelessWidget {
  const TokuApp1({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}