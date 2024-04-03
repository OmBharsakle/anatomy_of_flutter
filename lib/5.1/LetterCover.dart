import 'package:flutter/material.dart';

Widget LetterCover() {
  return Center(
    child: Container(
      alignment: Alignment.center,
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Color(0xff4CAF50),
        border: Border.symmetric(
          vertical: BorderSide(width: 130, color: Color(0xff4CAF50)),
          horizontal: BorderSide(width: 130, color: Color(0xff72C075)),
        ),
      ),
    ),
  );
}