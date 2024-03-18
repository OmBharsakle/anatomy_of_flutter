import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Color(0xff009688),
          centerTitle: true,
          title: const Text(
            '🛍 ️List Of Fruits 🛍️',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
        ),
        body: const Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '🍎 Apple\n',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                TextSpan(
                  text: '🍇 Greps\n',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                TextSpan(
                  text: '🍒 Cherry\n',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                TextSpan(
                  text: '🍓 Strawberray\n',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                TextSpan(
                  text: '🍎 Apple\n',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                TextSpan(
                  text: '🥭 Mango\n',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                TextSpan(
                  text: '🍍 Pineapple\n',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                TextSpan(
                  text: '🍋 Lemon\n',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                TextSpan(
                  text: '🍉 Watermelon\n',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                TextSpan(
                  text: '🥥 Coconut\n',
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
