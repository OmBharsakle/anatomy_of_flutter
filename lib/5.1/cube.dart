import 'package:flutter/material.dart';

Widget  Cube() {
  return Center(
    child: Container(
      alignment: Alignment.center,
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Color(0xff009688),
        border: Border.symmetric(
          vertical: BorderSide(width: 60, color: Color(0xff4DB6AC)),
          horizontal: BorderSide(width: 60, color: Color(0xff33ABA0)),
        ),
      ),
    ),
  );
}