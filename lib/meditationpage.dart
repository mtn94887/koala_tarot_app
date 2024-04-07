import 'package:flutter/material.dart';
import 'package:koala_tarot_app/cards.dart';
import 'package:koala_tarot_app/home.dart';
import 'package:koala_tarot_app/setting.dart';
import 'package:koala_tarot_app/tarothistorypage.dart'; // Import the TarotHistoryPage
import 'package:koala_tarot_app/music.dart'; // Import the music page

class MeditationPage extends StatefulWidget {
  @override
  _MeditationPageState createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage> {
  //int _selectedIndex = 0;
  double _volume = 0.5; // Track the volume value

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });

  //   switch (index) {
  //     case 0:
  //       // Navigate to TarotHomePage if Spreads icon is tapped
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => TarotHomePage()),
  //       );
  //       break;
  //     case 1:
  //       // Navigate to TarotHistoryPage if History icon is tapped
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => tarothistorypage()),
  //       );
  //       break;
  //     case 2:
  //       // Do nothing if Meditation icon is tapped (current page)
  //       break;
  //     case 3:
  //       // Navigate to SettingScreen if Settings icon is tapped
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => Cards()),
  //       );
  //       break;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF7D5AAD),
        automaticallyImplyLeading: false,
        title: const Text("Meditation"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingScreen()),
              );
            },
            icon: const Icon(Icons.settings),
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: Column(
          children: [
            // "Relax" and "your mind and body" text
            const Center(
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
            const SizedBox(height: 20),
            Center(
              child: Container(
                width: 230,
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xFFD8D2EF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle_fill,
                      size: 100,
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
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => music()), // Navigate to the music page
                );
              },
              child: const Row(
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
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.volume_mute, color: Colors.white), // Mute icon
                  Expanded(
                    child: Slider(
                      value: _volume, // Current volume value
                      onChanged: (newValue) {
                        setState(() {
                          _volume = newValue; // Update volume
                        });
                      },
                    ),
                  ),
                  const Icon(Icons.volume_up, color: Colors.white), // Full volume icon
                ],
              ),
            ),
          ],
        ),
      ),


      // bottomNavigationBar: BottomNavigationBar(
      //   items: <BottomNavigationBarItem>[
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.article_outlined, color: Colors.black),
      //       label: 'Spreads',
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.history, color: Colors.black),
      //       label: 'History',
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.self_improvement, color: Colors.black),
      //       label: 'Meditation',
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.copy_outlined, color: Colors.black),
      //       label: 'Cards',
      //     ),
      //   ],
      //   selectedItemColor: Colors.black,
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      // ),
    );
  }
}
