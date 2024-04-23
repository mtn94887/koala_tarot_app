import 'package:flutter/material.dart';
import 'package:koala_tarot_app/home.dart';
import 'package:koala_tarot_app/meditationpage.dart';
import 'package:koala_tarot_app/setting.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7D5AAD),
        automaticallyImplyLeading: false,
        title: Text("Card Reading History"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingScreen()),
              );
            },
            icon: Icon(Icons.settings),
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        // No GridView.builder here, removed the card display
      ),
    );
  }
}
