import 'package:flutter/material.dart';
Widget Watch() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            // 446FA3
            Color(0xff444A78),
            Color(0xff356AAC),
            Color(0xff268CE3)
          ]),
    ),
    alignment: Alignment.center,
    child: Container(
      width: 210,
      height: 65,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              // 446FA3
              Color(0xff446FA3),
              Color(0xff446FA3),
              Color(0xff446FA3),
            ]),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white,width: 0.5),
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