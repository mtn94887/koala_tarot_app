import 'package:flutter/material.dart';
import 'package:koala_tarot_app/setting.dart';
import 'package:koala_tarot_app/tarot_card_page.dart';

class TarotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TarotHomePage(),
    );
  }
}

class TarotHomePage extends StatefulWidget {
  @override
  _TarotHomePageState createState() => _TarotHomePageState();
}

class _TarotHomePageState extends State<TarotHomePage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Choose the category",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xFF7D5AAD),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 40,
          crossAxisSpacing: 10,
          children: [
            CategoryCard(categoryName: "Education", iconData: Icons.school),
            CategoryCard(
                categoryName: "Yes/No Question", iconData: Icons.sentiment_satisfied),
            CategoryCard(categoryName: "Daily Reading", iconData: Icons.today),
            CategoryCard(categoryName: "Weekly Reading", iconData: Icons.view_week),
            CategoryCard(categoryName: "Quick Reading", iconData: Icons.flash_on),
            CategoryCard(
                categoryName: "Three-Card Reading", iconData: Icons.format_list_numbered),
            CategoryCard(categoryName: "Relationship Reading", iconData: Icons.favorite),
            CategoryCard(
                categoryName: "New Love", iconData: Icons.energy_savings_leaf_sharp),
            CategoryCard(categoryName: "Health", iconData: Icons.local_hospital),
            CategoryCard(categoryName: "Prosperly", iconData: Icons.diamond),
            CategoryCard(
                categoryName: "Money Career", iconData: Icons.account_balance_wallet),
            CategoryCard(
                categoryName: "Background Problem Solution", iconData: Icons.blur_on),
          ],
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

class CategoryCard extends StatelessWidget {
  final String categoryName;
  final IconData iconData;

  const CategoryCard({required this.categoryName, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the TarotCardPage
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TarotCardPage(),
          ),
        );
      },
      child: Card(
        elevation: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData),
            SizedBox(height: 8),
            Text(
              categoryName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
