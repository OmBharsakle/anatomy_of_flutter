import 'package:flutter/material.dart';
Widget IndianFlag() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            // 446FA3
            Color(0xff2391EE),
            Color(0xff3171D2),
            Color(0xff3B5ABD)
          ]),
    ),
    alignment: Alignment.center,
    child: Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              // 446FA3
              Color(0xffFF5C29),
              Color(0xffFF5C29),
              Color(0xffEEF5EE),
              Color(0xffEEF5EE),
              Color(0xff3F9243),
              Color(0xff3F9243)
            ]),
        border: Border.all(color: Colors.white,width: 1),
      ),
      alignment: Alignment.center,
      child:  Text(
        "✴",
        style: TextStyle(
            color: Color(0xff00008B),
            fontSize: 40,
            fontWeight: FontWeight.w500),
      ),
    ),
  );
}