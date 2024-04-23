import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Stack_Use extends StatefulWidget {
  const Stack_Use({super.key});

  @override
  State<Stack_Use> createState() => _Stack_UseState();
}

class _Stack_UseState extends State<Stack_Use> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Stack Use',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  'Purple',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  'Indigo',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 70,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  'lightBluei',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 90,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  'Green',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 110,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  'Amber',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 170,
            left: 130,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  'Orange',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 150,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  'redAccent',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
