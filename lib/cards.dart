import 'package:flutter/material.dart';
import 'package:koala_tarot_app/home.dart';
import 'package:koala_tarot_app/meditationpage.dart';
import 'package:koala_tarot_app/tarothistorypage.dart';
import 'package:koala_tarot_app/setting.dart'; // Import your SettingScreen file

class Cards extends StatefulWidget {
  @override
  _cardsState createState() => _cardsState();
}

class _cardsState extends State<Cards> {
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
        // Navigate to TarotHistoryPage if History icon is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => tarothistorypage()),
        );
        break;
      case 2:
        // Navigate to MeditationPage if Meditation icon is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MeditationPage()),
        );
        break;
      case 3:
        
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF7D5AAD),
        title: Center(
          child: Text(
            'TAROT',
            style: TextStyle(
            fontSize: 30, // Change the font size to 24
              fontWeight: FontWeight.bold, // Make the text bold
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 238, 232, 243), // Change the text color to white
            ),
          ),
          
        ),
        centerTitle: true,
        actions: <Widget> [
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
        ]
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
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TheFool()),
              );
            },
            child: Container(
              height: 180,
              width: 100,
              child: Image.asset('assets/fool.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TheMagician()),
              );
            },
            child: Container(
              height: 180,
              width: 100,
              child: Image.asset('assets/magician.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SixOfPentacles()),
              );
            },
            child: Container(
              height: 180,
              width: 100,
              child: Image.asset('assets/sixofpentacles.png'),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TheMoon()),
              );
            },
            child: Container(
              height: 180,
              width: 100,
              child: Image.asset('assets/moon.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AceOfSwords()),
              );
            },
            child: Container(
              height: 180,
              width: 100,
              child: Image.asset('assets/aceofswords.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KingOfPentacles()),
              );
            },
            child: Container(
              height: 180,
              width: 100,
              child: Image.asset('assets/kingofpentacles.png'),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NineOfWands()),
              );
            },
            child: Container(
              height: 180,
              width: 100,
              child: Image.asset('assets/nineofwands.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WheelOfFortune()),
              );
            },
            child: Container(
              height: 180,
              width: 100,
              child: Image.asset('assets/wheeloffortune.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TheEmpress()),
              );
            },
            child: Container(
              height: 180,
              width: 100,
              child: Image.asset('assets/empress.png'),
            ),
          ),
        ],
      )
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


class TheFool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Fool'),
        backgroundColor: Color(0xFF7D5AAD),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/fool.png',
                  height: 500, // Change the height as needed
                  width: 300, // Change the width as needed
                ), 
                SizedBox(height: 20),

                // Add your text here
                Text(
                  'The Fool is a very powerful card in the Tarot deck, usually representing a new beginning and, consequently, an end to something in your old life. The position of fool in your spread reveals which aspects of your life may be subject to change. The Fool portends important decisions ahead which may not be easy to make, and involve an element of risk for you. Approach the changes with optimism and care to gain the most positive outcome.',
                  style: TextStyle(
                    color: Colors.white, // Change the text color as needed
                    fontSize: 20, // Change the text size as needed
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TheMagician extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Magician'),
        backgroundColor: Color(0xFF7D5AAD),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/magician.png',
                  height: 500, // Change the height as needed
                  width: 300, // Change the width as needed
                ), // Change 'your_image.png' to the path of your image

                // Add some space between the image and the text
                SizedBox(height: 20),

                // Add your text here
                Text(
                  'The Magician generally associates with intelligent and skillful communicators. His presence in your spread indicates a level of self-confidence and drive which allows you to translate ideas into action. A practical card, the revelations it brings are best applied to the pragmatic and physical aspects of your life, rather then the ephemeral or theoretical. Your success in upcoming ventures in politics or business will likely hinge upon your own strength of will and determination.',
                  style: TextStyle(
                    color: Colors.white, // Change the text color as needed
                    fontSize: 20, // Change the text size as needed
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SixOfPentacles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Six Of Pentacles'),
        backgroundColor: Color(0xFF7D5AAD),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/sixofpentacles.png',
                  height: 500, // Change the height as needed
                  width: 300, // Change the width as needed
                ), // Change 'your_image.png' to the path of your image

                // Add some space between the image and the text
                SizedBox(height: 20),

                // Add your text here
                Text(
                  'Success in your life is bound up to generosity. This may mean your prosperity will arise from your investment in others, perhaps a financial investment, or maybe advice and support for a friend. This card can also mean the reverse, that your success will arise from the generosity of someone else. The two are, of course, not exclusive, and drawing this card suggests you naturally lean towards benevolent acts and charity.',
                  style: TextStyle(
                    color: Colors.white, // Change the text color as needed
                    fontSize: 20, // Change the text size as needed
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TheMoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Moon'),
        backgroundColor: Color(0xFF7D5AAD),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/moon.png',
                  height: 500, // Change the height as needed
                  width: 300, // Change the width as needed
                ), // Change 'your_image.png' to the path of your image

                // Add some space between the image and the text
                SizedBox(height: 20),

                // Add your text here
                Text(
                  'Something in your life is not what it seems. Perhaps a misunderstanding on your part, or a truth you cannot admit to yourself. It may also indicate something important being kept from you by another. This may be a source of worry or depression in your life, and the Moon is a strong indicator that you must rely on your intuition to see through the subterfuge.',
                  style: TextStyle(
                    color: Colors.white, // Change the text color as needed
                    fontSize: 20, // Change the text size as needed
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AceOfSwords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ace Of Swords'),
        backgroundColor: Color(0xFF7D5AAD),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                
                Image.asset(
                  'assets/aceofswords.png',
                  height: 500, // Change the height as needed
                  width: 300, // Change the width as needed
                ), 
                SizedBox(height: 20),
            
                Text(
                  'The Ace of Swords is, like all of the Aces, the purest embodiment of its suit. In relation to your personality or your actions it implies a strong element of focus, determination, and an intellectual capacity. It may suggest change through warring forces, possibly internal; conflicts of not necessarily overt reasoning regarding inner consciousness, keep energetic to triumph.',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20, 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KingOfPentacles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('King Of Pentacles'),
        backgroundColor: Color(0xFF7D5AAD),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                
                Image.asset(
                  'assets/kingofpentacles.png',
                  height: 500, // Change the height as needed
                  width: 300, // Change the width as needed
                ), 
                SizedBox(height: 20),
            
                Text(
                  'The King of Pentacles embodies the mature and dependable aspects of maturity. Anyone represented by this card is tied to success and status. While it may refer to your own characteristics, the Kings most often stand in for other people in your life who can aid you. You can expect this person to value prudence of intelligence, and, if it represents an event, it may be a financial windfall or promotion.',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20, 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class NineOfWands extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nine Of Wands'),
        backgroundColor: Color(0xFF7D5AAD),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                
                Image.asset(
                  'assets/nineofwands.png',
                  height: 500, // Change the height as needed
                  width: 300, // Change the width as needed
                ), 
                SizedBox(height: 20),
            
                Text(
                  'The IX of Wands is a bittersweet discovery in your spread, as it suggests both struggles ahead and the capacity within you to overcome them. Your life is probably comfortable at the moment, but there are also likely signs of trouble in some of the less critical aspects of your personal or professional life. Your inner strength will be called upon to maintain the current situation, and then to move forward when progress becomes possible for you.',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20, 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WheelOfFortune extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wheel Of Fortune'),
        backgroundColor: Color(0xFF7D5AAD),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                
                Image.asset(
                  'assets/wheeloffortune.png',
                  height: 500, // Change the height as needed
                  width: 300, // Change the width as needed
                ), 
                SizedBox(height: 20),
            
                Text(
                  'Symbolic of life cycles, the Wheel of Fortune speaks to good beginnings. Most likely, you will find the events foretold to be positive, but, being aspects of luck, they may also be beyond your control and influence. Tend those things you can control with care, and learn not to agonize over the ones you cannot.',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20, 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TheEmpress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Empress'),
        backgroundColor: Color(0xFF7D5AAD),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/empress.png',
                  height: 500, // Change the height as needed
                  width: 300, // Change the width as needed
                ), // Change 'your_image.png' to the path of your image

                // Add some space between the image and the text
                SizedBox(height: 20),

                // Add your text here
                Text(
                  'Traditionally associated with strong maternal influence, the presence of the Empress is excellent news if you are looking for harmony in your marriage or hoping to start a family. Any artistic endeavours you are currently associated with are also likely to be more successful, as this card often finds those exposed to strong bursts of creative or artistic energy. That creative energy may not be in the form of a painting or art project, however: This card also suggests a very strong possibility of pregnancy -- not necessarily yours, but you might be seeing a new addition to your extended family or the family of a close friend in the near future! This card is a good portent for you and those around you.',
                  style: TextStyle(
                    color: Colors.white, // Change the text color as needed
                    fontSize: 20, // Change the text size as needed
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
