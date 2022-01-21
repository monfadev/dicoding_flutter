import 'package:flutter/material.dart';
import 'package:myproject_dicoding/fundamental/cupertino/main_cupertino.dart';

import 'fundamental/gesture_detector/main_page.dart';
import 'fundamental/news_app/pages/main_page.dart';
import 'fundamental/news_app_multiplatform/main.dart';

// void main() {
//   runApp(MyApp());
// }

// void main() {
//   runApp(GestureDetectorPage());
// }

// void main() {
//   runApp(MainCupertino());
// }

void main() {
  runApp(NewsAppMultiPlatform());
}


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MainScreen(),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => FirstScreen(),
//         '/secondScreen': (context) => SecondScreen(),
//         '/secondScreenWithData': (context) => SecondScreenWithData(
//             ModalRoute.of(context)?.settings.arguments as String),
//         '/returnDataScreen': (context) => ReturnDataScreen(),
//         '/replacementScreen': (context) => ReplacementScreen(),
//         '/anotherScreen': (context) => AnotherScreen(),
//       },
//     );
//   }
// }
