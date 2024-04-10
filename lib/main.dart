import 'dart:io';

import 'package:flutter/cupertino.dart';
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
            'Icons Editor',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                letterSpacing: 1),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 380,
                    height: 340,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                      BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 5,
                      blurRadius: 5,),
                     ]
                    ),
                    child: Center(child: Icon(Icons.arrow_back_rounded,size: 100,)),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    width: 380,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                      BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 5,
                      blurRadius: 5,),
                     ]
                    ),
                    child: Center(child: Text('Select Color',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  }