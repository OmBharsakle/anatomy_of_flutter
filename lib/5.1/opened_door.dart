import 'package:flutter/material.dart';
Widget  OpenedDoor() {
  return Center(
    child: Container(
      alignment: Alignment.center,
      width: 250,
      height: 350,
      decoration: BoxDecoration(
        color: Color(0xff000000),
        border: Border.symmetric(
          horizontal: BorderSide(
            width: 30,
            color: Color(0xff000000),
          ),
          vertical: BorderSide(width: 50, color: Color(0xffEEEEEE)),
        ),
      ),
    ),
  );
}