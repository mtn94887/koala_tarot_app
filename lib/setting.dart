import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:koala_tarot_app/Authenti/authpage.dart';
import 'package:koala_tarot_app/cards.dart';
import 'package:koala_tarot_app/Authenti/login_page.dart';
import 'package:koala_tarot_app/Authenti/mainpage.dart';
import 'package:koala_tarot_app/privacy.dart';
import 'package:koala_tarot_app/purpose.dart';
import 'package:koala_tarot_app/terms.dart';
import 'package:koala_tarot_app/home.dart';
import 'package:koala_tarot_app/meditationpage.dart';
import 'package:koala_tarot_app/tarot_favorite_page.dart';

//SETTING CODE
class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  String appVersion = '1.0.0';

  // void signOut() {
  //   FirebaseAuth.instance.signOut();
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => AuthPage()),
  //   );
  // }

  void signOut() {
    FirebaseAuth.instance.signOut();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirmation"),
          content: Text("Are you sure you want to sign out?"),
          actions: <Widget>[
            TextButton(
              child: Text("No"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Yes"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuthPage()),
                );
              },
            ),
          ],
        );
      },
    );
  }

  void _deleteAccount() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirmation"),
          content: Text("Are you sure you want to delete your account?"),
          actions: <Widget>[
            TextButton(
              child: Text("No"),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text("Yes"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuthPage()),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Settings',
        ),
        backgroundColor: Color.fromARGB(255, 189, 152, 241),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      //body code 
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: [
                ListTile(
                  title: Text('Signed in as ' + user.email!),
                ),
                ListTile(
                  title: Text('About Tarot'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PurposePage()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Terms of Service'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TermsScreen()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Privacy Policy'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PrivacyScreen()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Logout'),
                  onTap: signOut,
                ),
                ListTile(
                  title: Text(
                    'Delete Account',
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    _deleteAccount();
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'Version: $appVersion',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}