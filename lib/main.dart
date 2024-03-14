import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor : Colors.black,
        body: Center(
            child: Column(
              children: [
                Text('Hello', style:
                TextStyle(fontSize: 50,color: Colors.red,decoration: TextDecoration.underline,decorationColor: Colors.yellow,fontWeight: FontWeight.bold),),
                Text('Dart',style: TextStyle(fontSize: 50,color: Colors.red,decoration: TextDecoration.underline,decorationColor: Colors.yellow,fontWeight: FontWeight.bold),),
                Text('Flutter',style: TextStyle(fontSize: 50,color: Colors.red,decoration: TextDecoration.underline,decorationColor: Colors.yellow,fontWeight: FontWeight.bold),),],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ),
       ),
    );
  }
}

