import 'package:flutter/material.dart';
import 'package:koala_tarot_app/login_page.dart';
import 'package:koala_tarot_app/signup.dart';

class AuthPage extends StatefulWidget{
  const AuthPage({Key? key}): super(key: key); 
  @override
  State<AuthPage> createState() => _AuthPageState(); 
}

class _AuthPageState extends State<AuthPage>{

  bool showLoginPage = true; 
  void toggleScreens() { 
    setState(() {
      showLoginPage = !showLoginPage; 
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return LoginPage(showRegisterPage: toggleScreens);
    } else {
      return SignupPage(showLoginPage: toggleScreens); 
    }
  }

}