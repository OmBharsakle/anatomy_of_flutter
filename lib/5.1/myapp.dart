import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff7CB342),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff8BC34A),
          title: const Text(
            'My App',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
                letterSpacing: 2),
          ),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'oooo',
              style: TextStyle(
                  fontSize: 200, letterSpacing: -63, color: Colors.black38),
            ),
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              color: Color(0xffB2FF59),
              border: Border.all(
                color: Color(0xff4CAF50),
                width: 30,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
