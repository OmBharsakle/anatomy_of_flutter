import 'package:flutter/material.dart';

// // # 1st Ui
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Color(0xff7CB342),
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Color(0xff8BC34A),
//           title: const Text(
//             'My App',
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w600,
//                 fontSize: 20,
//                 letterSpacing: 2),
//           ),
//         ),
//         body: Center(
//           child: Container(
//             alignment: Alignment.center,
//             child: Text(
//               'oooo',
//               style: TextStyle(fontSize: 200, letterSpacing: -63,color: Colors.black38),
//             ),
//             width: 350,
//             height: 350,
//             decoration: BoxDecoration(
//               color: Color(0xffB2FF59),
//               border: Border.all(
//                 color: Color(0xff4CAF50),
//                 width: 30,
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

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

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            'Mix-Up',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
                fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 410,
            height: 410,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            alignment: Alignment.bottomRight,
            child: Container(
              width: 350,
              height: 350,
              decoration: const BoxDecoration(
                color: Colors.yellow,
              ),
              alignment: Alignment.bottomRight,
              child: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.pink,
                ),
                alignment: Alignment.topLeft,
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                  ),
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                    ),
                    alignment: Alignment.center,
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: const BoxDecoration(
                        color: Colors.cyanAccent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
