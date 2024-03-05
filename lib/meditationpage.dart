import 'package:flutter/material.dart';

class meditationpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove back arrow
        title: Center(child: Text('Meditation')),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: Column(
          children: [
            // "Relax" and "your mind and body" text
            Center(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Relax',
                    style: TextStyle(
                      fontFamily: 'Yeseva One',
                      fontSize: 64,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'your mind and body',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // Rectangle with play button and "Press to start breathing exercise"
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 230,
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xFFD8D2EF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle_fill,
                      size: 70,
                      color: Colors.white,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Press to start breathing exercise',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Three-stripe menu with "Choose relaxation music" text
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/music');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.menu, color: Colors.white), // Three-stripe menu icon
                  SizedBox(width: 10), // Add space between the icon and the text
                  Text(
                    'Choose relaxation music',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // Volume adjustment line with mute icon on the left and full volume on the right
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.volume_mute, color: Colors.white), // Mute icon
                  Expanded(
                    child: Slider(
                      value: 0.5, // Current volume value
                      onChanged: (newValue) {
                        // Update volume
                      },
                    ),
                  ),
                  Icon(Icons.volume_up, color: Colors.white), // Full volume icon
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.article_outlined, color: Colors.black),
      label: 'Spreads',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.history, color: Colors.black),
      label: 'History',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.self_improvement, color: Colors.black),
      label: 'Meditation',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings, color: Colors.black),
      label: 'Settings',
    ),
  ],
  selectedItemColor: Colors.black,
  currentIndex: 2,
  onTap: (index) {
    switch (index) {
      case 0:
        // Handle Spreads tab tap
        break;
      case 1:
        Navigator.pop(context); // Navigate back to the home page
        break;
      case 2:
        // Handle Meditation tab tap
        break;
      case 3:
        // Handle Settings tab tap
        break;
    }
  },
),

    );
  }
}
