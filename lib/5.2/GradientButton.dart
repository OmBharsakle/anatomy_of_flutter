import 'package:flutter/material.dart';
Widget GradientButton() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xff48416A),
    ),
    alignment: Alignment.center,
    child: Container(
      width: 210,
      height: 65,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xff8E34B8),
          Color(0xff615CD0),
          Color(0xff3A7FE5)
        ]),
        border: Border.all(color: Colors.white,width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child:  Text('Flutter',style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w500
      ),),
    ),
  );
}