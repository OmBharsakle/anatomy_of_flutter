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
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'RichText Example',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
        ),
        body: const Center(
          child:  Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Single ',style: TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold)),
                TextSpan(text: ' Line ',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold,backgroundColor: Colors.teal)),
                TextSpan(text: ' Multiple ',style: TextStyle(fontSize: 25,color: Colors.orange,fontWeight: FontWeight.w600)),
                TextSpan(text: 'Style',style: TextStyle(fontSize: 25,color: Colors.pink,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

