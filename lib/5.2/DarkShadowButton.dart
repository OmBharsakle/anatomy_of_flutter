import 'package:flutter/material.dart';
Widget DarkShadowButton() {
  return Center(
    child: Container(
      width: 250,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.red,width: 2),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.red,
            blurRadius: 20,
            spreadRadius: 10,
          ),
        ],
      ),
      alignment: Alignment.center,
      child:  Text('Tap',style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w500
      ),),
    ),
  );
}