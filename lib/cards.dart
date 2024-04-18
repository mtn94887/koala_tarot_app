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
        title:Center(
          child: Text(
            'Tarot Cards',
            style: TextStyle(
            fontSize: 22, 
              color: Colors.black,
             
            ),
          ),
          
        ),
        
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

body: SingleChildScrollView( 
    child : Container(
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
              height: 200,
              width: 130,
              child: Image.asset('assets/the-fool.png'),
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
              height: 200,
              width: 130,
              child: Image.asset('assets/the-magician.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TheHighPriestess()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/the-high-priestess.png'),
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
                MaterialPageRoute(builder: (context) => TheEmpress()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/the-empress.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TheEmperor()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/the-emperor.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TheHierophant()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/the-heirophant.png'),
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
                MaterialPageRoute(builder: (context) => TheLovers()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/the-lovers.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TheChariot()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/the-chariot.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Strength()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/strength.png'),
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
                MaterialPageRoute(builder: (context) => TheHermit()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/the-hermit.png'),
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
              height: 200,
              width: 130,
              child: Image.asset('assets/wheel-of-fortune.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Justice()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/justice.png'),
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
                MaterialPageRoute(builder: (context) => TheHangedMan()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/the-hanged-man.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Death()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/death.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Temperance()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/temperance.png'),
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
                MaterialPageRoute(builder: (context) => TheDevil()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/the-devil.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TheTower()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/the-tower.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TheStar()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/the-star.png'),
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
              height: 200,
              width: 130,
              child: Image.asset('assets/the-moon.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TheSun()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/the-sun.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the second page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Judgement()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/judgement.png'),
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
                MaterialPageRoute(builder: (context) => TheWorld()),
              );
            },
            child: Container(
              height: 200,
              width: 130,
              child: Image.asset('assets/the-world.png'),
            ),
          ),                   
        ],
      ),
     
      
    ],
  ),
),

      
)
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/the-fool.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                // Add your text here
                Text(
                  'The Fool is a very powerful card in the Tarot deck, usually representing a new beginning and, consequently, an end to something in your old life. The position of fool in your spread reveals which aspects of your life may be subject to change. The Fool portends important decisions ahead which may not be easy to make, and involve an element of risk for you. Approach the changes with optimism and care to gain the most positive outcome.',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                    textAlign: TextAlign.center,
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/the-magician.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                Text(
                  'The Magician generally associates with intelligent and skillful communicators. His presence in your spread indicates a level of self-confidence and drive which allows you to translate ideas into action. A practical card, the revelations it brings are best applied to the pragmatic and physical aspects of your life, rather then the ephemeral or theoretical. Your success in upcoming ventures in politics or business will likely hinge upon your own strength of will and determination.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TheHighPriestess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The High Priestess'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/the-high-priestess.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                Text(
                  '  important to you.',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20,
                  ),
                   textAlign: TextAlign.center,
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/the-empress.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),              
                Text(
                  ' It may aerfuge.',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TheEmperor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Emperor'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                
                Image.asset(
                  'assets/the-emperor.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),
            
                Text(
                  '  triumph.',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TheHierophant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Hierophant'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                
                Image.asset(
                  'assets/the-hierophant.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),            
                Text(                  
                  '  or promotion.',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class TheLovers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Lovers'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                
                Image.asset(
                  'assets/the-lovers.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),
            
                Text(
                  '   possible for you.',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TheChariot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Chariot'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                
                Image.asset(
                  'assets/the-chariot.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),
            
                Text(
                  'Symbolic of life cycles, the Wheel of Fortune speaks to good beginnings. Most likely, you will find the events foretold to be positive, but, being aspects of luck, they may also be beyond your control and influence. Tend those things you can control with care, and learn not to agonize over the ones you cannot.',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Strength extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Strength'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/strength.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class TheHermit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Hermit'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/the-hermit.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/wheel-of-fortune.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Justice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Justice'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/justice.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class TheHangedMan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Hanged Man'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/the-hanged-man.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Death extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Death'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/death.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Temperance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperance'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/temperance.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class TheDevil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Devil'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/the-devil.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class TheTower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Tower'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/the-tower.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class TheStar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Star'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/the-star.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/the-moon.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class TheSun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Sun'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/the-sun.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Judgement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Judgement'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/judgement.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),

                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class TheWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The World'),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                Image.asset(
                  'assets/the-world.png',
                  height: 500, 
                  width: 300, 
                ), 
                SizedBox(height: 20),                
                Text(
                  'nfluence,e .',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 20, 
                  ),
                   textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
