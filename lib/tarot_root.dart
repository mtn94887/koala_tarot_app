import 'package:flutter/material.dart';
import 'package:koala_tarot_app/meditationpage.dart';
import 'package:koala_tarot_app/music.dart';
import 'package:koala_tarot_app/tarothistorypage.dart';

class tarot_root extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Tarot Card Reading',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: tarothistorypage(),
     routes: {
       //'/meditation': (context) => MeditationPage(),
       '/music': (context) => Music(),
     },
   );
 }
}
