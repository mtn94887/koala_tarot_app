import 'package:flutter/material.dart';
import 'package:koala_tarot_app/home.dart';
import 'package:koala_tarot_app/welcome.dart';
import 'purpose.dart';
import 'features.dart';
import 'background.dart';

void main() {
  runApp(TarotApp());
}
// class TarotApp extends StatelessWidget {
//   const TarotApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         // Set PurposePage as initial route
//         initialRoute: '/',
//         routes: {
//           '/': (context) => PurposePage(), // Set PurposePage as '/' route
//           '/features': (context) => FeaturesPage(), // Add FeaturesPage route
//           '/background': (context) =>
//               BackgroundPage(), // Add BackgroundPage route
//         });
//     // home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     //);
//   }
// }
