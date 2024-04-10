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
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text(
            'Chess',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
                letterSpacing: 2),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
              ],
            ),
            Row(
              children: [
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),

              ],
            ),Row(
              children: [
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
              ],
            ),
            Row(
              children: [
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),

              ],
            ),Row(
              children: [
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
              ],
            ),
            Row(
              children: [
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),

              ],
            ),Row(
              children: [
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
              ],
            ),
            Row(
              children: [
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),
                BlackBox(),
                WhiteBox(),

              ],
            ),

          ],
        ),
      ),
    );
  }
}

Widget WhiteBox()
{
  return Center(
    child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 51.3,
              height: 51.3,
              color: Colors.blue,
            ),
          ],
        )
      ],
    ),
  );
}
Widget BlackBox()
{
  return Center(
    child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 51.3,
              height: 51.3,
              color: Colors.black,
            ),
          ],
        )
      ],
    ),
  );
}
