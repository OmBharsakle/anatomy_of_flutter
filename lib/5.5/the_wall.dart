import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'THE WALL',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                letterSpacing: 2,
                color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff212121),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FirstWall(),
            SecondWall(),
            FirstWall(),
            SecondWall(),
            FirstWall(),
            SecondWall(),
            FirstWall(),
            SecondWall(),
          ],
        ),
      ),
    );
  }

  Row SecondWall() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 80,
          width: 130,
          color: Colors.brown,
        ),
        Container(
          height: 80,
          width: 110,
          color: Colors.brown,
        ),
        Container(
          height: 80,
          width: 130,
          color: Colors.brown,
        ),
      ],
    );
  }

  Row FirstWall() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 80,
          width: 100,
          color: Colors.brown,
        ),
        Container(
          height: 80,
          width: 180,
          color: Colors.brown,
        ),
        Container(
          height: 80,
          width: 100,
          color: Colors.brown,
        ),
      ],
    );
  }
}
