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
          child: Text('Hello\n\n\n\n\n\nDart\n\n\n\n\n\nFlutter',
            style: TextStyle(fontSize: 30,color: Colors.red,decoration: TextDecoration.underline,decorationColor: Colors.yellow,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light
      )

  );
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
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              Text(
                'Hello',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.yellow,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Dart',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.yellow,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Flutter',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.yellow,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ),
      ),
    );
  }
}

 */