import 'package:flutter/material.dart';

Widget LaunchButton() {
  return Center(
    child: Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        border: Border.all(color: Colors.white,width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.green,
            blurRadius: 20,
            spreadRadius: 10,
          ),
        ],
      ),
      alignment: Alignment.center,
      child:  Text('GO',style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w500
      ),),
    ),
  );
}