import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:koala_tarot_app/Authenti/authpage.dart';
import 'package:koala_tarot_app/bottom_navigation_bar.dart';
import 'package:koala_tarot_app/home.dart';
import 'package:koala_tarot_app/Authenti/login_page.dart';

class MainPage extends StatelessWidget{
  const MainPage({Key? key}) : super (key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if (snapshot.hasData){ 
            return BottomNavigationBarExampleApp(); 
          } else {
            return AuthPage(); 
          }
        },
      ),
    );
  }
}
