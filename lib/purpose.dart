import 'package:flutter/material.dart';
import 'features.dart';

class PurposePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // Adjust the height as needed
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF9D88BA), // Adjust opacity as needed
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Implement navigation to previous screen
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Tarot',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Container(
                width: double.infinity, // Adjust the width as needed
                height: 250, // Adjust the height as needed
                child: Image.asset(
                  'assets/_ Photo.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 20),
              // Text widgets for the purpose of the app
              Text(
                'The Purpose of Our App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'To help you able to discover the answers'
                ' to your concerns through Tarot readings.'
                ' Easily draw cards for insights into your life’s questions. Engage with a user-friendly interface designed for readings anywhere.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enjoy your reading',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.card_giftcard, color: Colors.white),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the next page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeaturesPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF15267D),
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  child: Text(
                    'Learn more about app',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
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
