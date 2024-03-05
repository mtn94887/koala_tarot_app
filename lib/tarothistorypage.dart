// tarothistorypage.dart
import 'package:flutter/material.dart';
import 'package:koala_tarot_app/home.dart';
import 'package:koala_tarot_app/setting.dart';
import 'package:koala_tarot_app/meditationpage.dart'; 
import 'package:koala_tarot_app/readingdetailspage.dart';

class tarothistorypage extends StatefulWidget {
  @override
  _tarothistorypageState createState() => _tarothistorypageState();
}

class _tarothistorypageState extends State<tarothistorypage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        // Navigate to TarotHomePage if Spreads icon is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TarotHomePage()),
        );
        break;
      case 1:
        // Navigate to TarotHistoryPage if History icon is tapped (current page)
        break;
      case 2:
        // Navigate to MeditationPage if Meditation icon is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MeditationPage()),
        );
        break;
      case 3:
        // Navigate to SettingScreen if Settings icon is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingScreen()),
        );
        break;
    }
  }

  final List<Map<String, dynamic>> cardLabels = [
    {'label': 'Daily Reading', 'index': 0},
    {'label': 'Yes or No', 'index': 1},
    {'label': 'Daily Reading', 'index': 2},
    {'label': 'Daily Reading', 'index': 3},
    {'label': 'Romance', 'index': 4},
    {'label': 'Daily Reading', 'index': 5},
    {'label': 'Education', 'index': 6},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('Card Reading History')),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 60 / 100,
          ),
          itemCount: cardLabels.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigate to ReadingDetailsPage when a card is clicked
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReadingDetailsPage(
                      title: cardLabels[index]['label'],
                      cardIndex: cardLabels[index]['index'],
                    ),
                  ),
                );
              },
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Placeholder(
                        child: Expanded(
                          child: Image.asset(
                            'assets/image_${cardLabels[index]['index']}.png', // Path to your image asset
                            fit: BoxFit.cover, // Adjust the fit based on your requirement
                          ),
                        ),
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8.0),
                      color: Color(0xFFD8D2EF),
                      child: Text(
                        cardLabels[index]['label'],
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'Spreads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.self_improvement),
            label: 'Meditation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
