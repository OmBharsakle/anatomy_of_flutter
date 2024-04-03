import 'package:flutter/material.dart';
Widget CssButton() {
  return Center(
    child: Container(
      width: 270,
      height: 90,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          // 446FA3
          Color(0xffD44E93),
          Color(0xffD44E93),
          Color(0xffF44180),
          Color(0xffFF536B)
        ]),
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
              color: Colors.pinkAccent.withOpacity(0.8),
              blurStyle: BlurStyle.normal,
              blurRadius: 20,
              offset: const Offset(0, 20),
              spreadRadius: 2
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        'Call To Action',
        style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            letterSpacing: 1,
            fontWeight: FontWeight.w500),
      ),
    ),
  );
}