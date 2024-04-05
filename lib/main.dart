import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// // # 1st Ui
//

// // // # 2nd Ui
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Mission Of RNW',
//           style: TextStyle(
//             fontWeight: FontWeight.w500,
//             letterSpacing: 1,
//             color: Colors.white,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Color(0xffFF5252),
//       ),
//       body: Center(
//         child: Container(
//           alignment: Alignment.center,
//           child: Text(
//             'Shaping "skills" for "scaling" higher \n-RNW',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 18,
//             ),
//           ),
//           width: 350,
//           height: 100,
//           decoration: BoxDecoration(
//             color: Color(0xffff8c8c),
//             border: Border(left: BorderSide(color: Colors.red,width: 10))
//           ),
//         ),
//       ),
//     ),
//   ));
// }

// // # 2nd Ui

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: const Text(
//             'Mix-Up',
//             style: TextStyle(
//                 color: Colors.white,
//                 letterSpacing: 1,
//                 fontWeight: FontWeight.w500),
//           ),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Container(
//             width: 410,
//             height: 410,
//             decoration: const BoxDecoration(
//               color: Colors.blue,
//             ),
//             alignment: Alignment.bottomRight,
//             child: Container(
//               width: 350,
//               height: 350,
//               decoration: const BoxDecoration(
//                 color: Colors.yellow,
//               ),
//               alignment: Alignment.bottomRight,
//               child: Container(
//                 width: 300,
//                 height: 300,
//                 decoration: const BoxDecoration(
//                   color: Colors.pink,
//                 ),
//                 alignment: Alignment.topLeft,
//                 child: Container(
//                   width: 250,
//                   height: 250,
//                   decoration: const BoxDecoration(
//                     color: Colors.orange,
//                   ),
//                   alignment: Alignment.topLeft,
//                   child: Container(
//                     width: 200,
//                     height: 200,
//                     decoration: const BoxDecoration(
//                       color: Colors.green,
//                     ),
//                     alignment: Alignment.center,
//                     child: Container(
//                       width: 170,
//                       height: 170,
//                       decoration: const BoxDecoration(
//                         color: Colors.cyanAccent,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

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
