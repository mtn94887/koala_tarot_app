import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int currentYear = DateTime.now().year;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Terms of Service'),
        backgroundColor: Color.fromARGB(255, 189, 152, 241),
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tarot App Terms of Service',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to the Tarot app! By using this app, you agree to abide by the following terms and conditions:',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Text(
              '1.This app is for entertainment purposes only and should not be considered as professional advice.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            Text(
              '2.We do not guarantee the accuracy or reliability of any information provided by this app.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            Text(
              '3.You agree to use this app responsibly and ethically.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            Text(
              '4.The Tarot readings provided by this app are based on algorithms and should not be taken as absolute truth.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            Text(
              '5.We do not take responsibility for any decisions made based on the Tarot readings.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            Text(
              '6.You must be of legal age in your jurisdiction to use this app.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            Text(
              '7.We reserve the right to modify or discontinue the app or any part of it at any time.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            Text(
              '8.By using this app, you agree to receive occasional promotional messages from us.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            Text(
              '9.Any user-generated content shared on this app must adhere to community guidelines.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            Text(
              '10.Violation of these terms may result in termination of your account.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            // Move the copyright statement to the bottom
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: Text(
                  'Copyright © $currentYear Presented by Koala Team (MFU).',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

