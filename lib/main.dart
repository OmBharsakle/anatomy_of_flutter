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
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff6F4E42),
          title: const Text(
            'Mashal',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
                letterSpacing: 2),
          ),
        ),
        body: CssButton(),
      ),
    ),
  );
}

Widget CssButton() {
  return Center(
    child: Container(
      width: 270,
      height: 90,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          // 446FA3
          Color(0xffD44E93),
          Color(0xffD44E93),
          Color(0xffF44180),
          Color(0xffFF536B)
        ]),
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
              color: Colors.pinkAccent.withOpacity(0.8),
              blurStyle: BlurStyle.normal,
              blurRadius: 20,
              offset: const Offset(0, 20),
              spreadRadius: 2
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        'Call To Action',
        style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            letterSpacing: 1,
            fontWeight: FontWeight.w500),
      ),
    ),
  );
}
