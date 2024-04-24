import 'package:flutter/material.dart';
import 'package:koala_tarot_app/mainpage.dart';
import 'package:koala_tarot_app/tarothistorypage.dart';
import 'package:koala_tarot_app/welcome.dart';
import 'package:koala_tarot_app/purpose.dart';
import 'package:koala_tarot_app/features.dart';
import 'package:koala_tarot_app/background.dart';
import 'package:provider/provider.dart';
import 'bottom_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
   // options: FirebaseOptions(
   //   apiKey: 'key',
   //   appId: 'id',
   //   messagingSenderId: 'sendid',
   //   projectId: 'myapp',
   //   storageBucket: 'myapp-b9yt18.appspot.com',
   // )
 );
 runApp(ChangeNotifierProvider(
     create: (context) => TarotHistoryModel(),
     child: MaterialApp(
       home: MainPage(),
     ),
   ),
 );
}


class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     //title: 'Your App Title',
     home: MainPage(),
     // You can add more MaterialApp configurations here
   );
 }
}
