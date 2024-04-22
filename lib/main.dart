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
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: const Text(
            'SPILTTER',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                letterSpacing: 3,
                color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff212121),
        ),
        body: Column(
          children: [
            Container(
              height: 375,
              child: Row(
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                        children: List.generate(
                      10,
                      (index) => ColumnContainer(index + 1),
                    )),
                  )),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 370,
              color: Colors.red,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                  10,
                  (index) => RowContainer(index + 1),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container ColumnContainer(int index) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 85,
      width: double.infinity,
      color: Colors.yellow,
      child: Center(
          child: Text(
        '$index',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
      )),
    );
  }
}

Container RowContainer(int index) {
  return Container(
    margin: EdgeInsets.all(15),
    height: 350,
    width: 85,
    color: Colors.yellow,
    child: Center(
        child: Text(
      '$index',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
    )),
  );
}
