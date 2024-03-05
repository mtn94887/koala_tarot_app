import 'package:flutter/material.dart';
import 'package:koala_tarot_app/home.dart';
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

    if (index == 3) {
      // Navigate to SettingScreen if Settings icon is tapped
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingScreen()),
      );
    } else if (index == 0) {
      // Navigate to TarotHomePage if Spreads icon is tapped
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TarotHomePage()),
      );
    }
  }

  final List<String> cardLabels = [
    'Daily Reading',
    'Yes or No',
    'Daily Reading',
    'Daily Reading',
    'Romance',
    'Daily Reading',
    'Education',
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
            return Card(
              child: Column(
                children: [
                  Expanded(
                    child: Placeholder(
                      child: Expanded(
                        child: Image.asset(
                          'assets/image_$index.png', // Path to your image asset
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
                      cardLabels[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
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
