import 'package:flutter/material.dart';

Widget Mashal() {
  return Center(
    child: Container(
      alignment: Alignment.center,
      width: 100,
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xff7f6053),
        border: Border.symmetric(
          horizontal: BorderSide(
            width: 30,
            color: Color(0xff87665B),
          ),
          vertical: BorderSide(width: 20, color: Colors.white),
        ),
      ),
      child: Text(
        '🔥',
        style: TextStyle(fontSize: 40, height: -6.1),
      ),
    ),
  );
}
