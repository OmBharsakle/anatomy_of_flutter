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
          padding:
          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(5, 10),
                )
              ]),
          child: const Text(
            'Purple',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      Positioned(
        top: 65,
        left: 55,
        child: Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(5, 10),
                )
              ]),
          child: const Text(
            'Indigo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      Positioned(
        top: 110,
        left: 95,
        child: Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(5, 10),
                )
              ]),
          child: const Text(
            'LightBlue',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                letterSpacing: 0),
          ),
        ),
      ),
      //
      Positioned(
        top: 150,
        left: 135,
        child: Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(5, 10),
                )
              ]),
          child: const Text(
            'Green',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      Positioned(
        top: 190,
        right: 85,
        child: Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(5, 10),
                )
              ]),
          child: const Text(
            'Amber',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      Positioned(
        top: 232,
        right: 45,
        child: Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(5, 10),
                )
              ]),
          child: const Text(
            'Orange',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      Positioned(
        top: 280,
        right: 10,
        child: Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(5, 10),
                )
              ]),
          child: const Text(
            'RedAccent',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      ]
      )
    );
  }
}
