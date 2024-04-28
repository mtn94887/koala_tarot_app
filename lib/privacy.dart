import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Privacy & Policy'),
        backgroundColor:Color.fromARGB(255, 189, 152, 241),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Privacy & Policy',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                '1. Data Collection:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'We may collect certain personal information, such as your name, email address, date of birth, and location, to provide personalized tarot readings and improve our services. Your data may also be used for analytics purposes to enhance user experience.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10.0),
              Text(
                '2. Data Usage:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Your personal information may be used to generate accurate tarot readings and deliver them to you. We do not share your data with third parties without your consent. However, anonymized and aggregated data may be shared for research or marketing purposes.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10.0),
              Text(
                '3. Data Protection:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'We take appropriate security measures to protect your data against unauthorized access, alteration, disclosure, or destruction. Your privacy is important to us, and we strive to keep your information secure. However, please note that no method of transmission over the internet or electronic storage is 100% secure.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10.0),
              Text(
                '4. Contact Us:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'If you have any questions or concerns about our Privacy Policy, please feel free to contact us at "tarot@koala.com". We value your feedback and are committed to addressing any issues promptly and transparently.',
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PrivacyScreen(),
  ));
}
