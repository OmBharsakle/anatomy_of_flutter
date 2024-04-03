import 'package:flutter/material.dart';

Widget A_ShadowButton() {
  return Center(
    child: Container(
      width: 210,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.greenAccent,width: 2),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.greenAccent,
            blurRadius: 20,
            spreadRadius: 8,
          ),
        ],
      ),
      alignment: Alignment.center,
      child:  Text('Tap',style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500
      ),),
    ),
  );
}