import 'package:flutter/material.dart';
import 'package:koala_tarot_app/cards.dart';
import 'package:koala_tarot_app/mainpage.dart';
import 'home.dart';
import 'tarothistorypage.dart'; 
import 'meditationpage.dart';


class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    TarotHomePage(),
    tarothistorypage(),
    MeditationPage(),
    Cards(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/crystal-ball.png', // Path to your image for the first tab
              width: 24,
              height: 24,
            ),
            label: 'Readings',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/history-book.png', // Path to your image for the second tab
              width: 24,
              height: 24,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/yoga.png', // Path to your image for the third tab
              width: 24,
              height: 24,
            ),
            label: 'Meditation',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/magic.png', // Path to your image for the fourth tab
              width: 24,
              height: 24,
            ),
            label: 'Cards',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        onTap: _onItemTapped,
      ),
    );
  }

}


