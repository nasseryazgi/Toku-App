import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categroy extends StatelessWidget {
  Categroy({this.color, required this.text, this.onTap , this.IconImage});
  String text;
  Color? color = Colors.teal;
  Function()? onTap;
  String? IconImage;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(120),
          color: color,
        ),
        height: 50,
        alignment: Alignment.center,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),SizedBox(width: 20,),
            Image(
              height: 40,
              image: AssetImage(IconImage!),
            )
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  Category(this.text, this.color, this.onTap); // give this to constrcuter
  String? text;
  Color? color;
  Function()? onTap;
  VoidCallback? onTap2;
  //typedef VoidCallback = void Function();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.only(left: 24),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 60,
          color: color,
          child: Text(
            text!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
