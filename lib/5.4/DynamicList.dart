import 'dart:io';

import 'package:flutter/material.dart';

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
        backgroundColor: Color(0xffEEEEEE),
        appBar: AppBar(
          title: const Text(
            'Dynamic List',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                letterSpacing: 1),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF244D61),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(BoxList.length, (index) => Box(index+1)),
          ),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  BoxList.add(1);
                });
              },
              child: box(icon: Icons.add),
            ),
            const SizedBox(width: 15),
            InkWell(
              onTap: () {
                setState(() {
                  BoxList.removeAt(BoxList.length-1);
                });
              },
              child: box(icon: Icons.remove),
            ),
          ],
        ),
      ),
    );
  }

  Widget Box(int Index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
          child: Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: (Index % 2 == 0) ? Color(0xFF75E2FF) : Color(0xFF5689C0),
                borderRadius: BorderRadius.circular(20)),
            child: Center(
                child: Text(
                  '$Index',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                      color: Colors.white),
                )),
          ),
        ),
      ],
    );
  }
}

Container box({required IconData icon}) {
  return Container(
    height: 70,
    width: 70,
    alignment: Alignment.center,
    decoration: const BoxDecoration(
      color: Color(0xFF244D61),
      shape: BoxShape.circle,
    ),
    child: Icon(
      icon,
      color: Colors.white,
      size: 35,
    ),
  );
}

List BoxList = [
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
];