import 'package:flutter/material.dart';
import 'package:koala_tarot_app/Authenti/mainpage.dart';
import 'package:koala_tarot_app/FavoriteReadings.dart';
import 'package:koala_tarot_app/bottom_navigation_bar.dart';
import 'package:koala_tarot_app/home.dart';
import 'package:koala_tarot_app/tarot_favorite_page.dart';
import 'package:koala_tarot_app/purpose.dart';
import 'package:koala_tarot_app/features.dart';
import 'package:koala_tarot_app/background.dart';
import 'package:koala_tarot_app/meditationpage.dart';
import 'package:koala_tarot_app/music.dart'; // Update to correct import
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoriteReadings(),
      child: MyApp(), 
    ),
  );
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
    title: 'Your App Title', // Set your app title
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //please change to MainPage() in the place of BottomNavigationBarExampleApp()
      home: MainPage(),
      //home: BottomNavigationBarExampleApp(),
      routes: {
        //'/meditation': (context) => MeditationPage(),
        '/music': (context) => Music(), 
        
      },
   );
 }
}
