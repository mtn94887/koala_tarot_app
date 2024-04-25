import 'package:flutter/material.dart';
import 'package:koala_tarot_app/home.dart';
import 'package:koala_tarot_app/meditationpage.dart';
import 'package:koala_tarot_app/tarot_favorite_page.dart';
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
          MaterialPageRoute(builder: (context) => tarotfavoritepage()),
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
        title:Text(
            'Tarot Cards',
            style: TextStyle(
            fontSize: 23, 
            fontFamily: 'Pacifico',
            color: Colors.black,
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
                    color: Colors.white, 
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
                    color: Colors.white,
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
                  'Your identification with the High Priestess suggests you possess inherent good judgment, in the form of strong intuition. She may indicate that reason should take second place to instinct. Your head must trust in the wisdom of your heart for a change. Yet, she is also an aide by nature, and her presence in certain parts of your spread could be indicative of someone close to you coming to your rescue with their own intuition. Intuition is most effective at seeing what is hidden to the senses, so the High Priestess may also come as a warning of concealed facts or influences that are, or will be, important to you.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'Traditionally associated with strong maternal influence, the presence of the Empress is excellent news if you are looking for harmony in your marriage or hoping to start a family. Any artistic endeavours you are currently associated with are also likely to be more successful, as this card often finds those exposed to strong bursts of creative or artistic energy. That creative energy may not be in the form of a painting or art project, however: This card also suggests a very strong possibility of pregnancy -- not necessarily yours, but you might be seeing a new addition to your extended family or the family of a close friend in the near future! This card is a good portent for you and those around you.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'Counterpart to the Empress, the Emperor is signifies a powerful influence, generally male in nature. This can also include concepts in your life historically considered masculine, such as leadership and authority, self-discipline, and stability through the power of action. Its positive influences suggest you may be on a path to advancement or promotion, but it can also be neutral. Often a companion to those destined to take on greater responsibility, it may presage change or loss that necessitates you stepping forward to shoulder a greater burden than you have in the past. Whatever the impetus for the change, it indicates you may possess an uncommon inner strength that will compel you act and to lead.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'Depending on your own nature, the Hierophant can mean very different things. At its root, it represents doctrine, but doctrine can come in the form of teaching and guidance or rigid authority. Where it appears in your spread is also important, as it is most often indicative of your own approach to the moral, religious, and social conventions of the world. Considered wisely, it helps show the path towards fulfillment.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'Your first instinct will most likely be to associate this card as representing love, but, much like love, it does not possess a simple nature. Not only does love comes in many forms, but the Lovers may indicate important or difficult choices ahead in your life. This is bad, in that the choices it portends are generally mutually exclusive, paths to two very different futures, but also good, in that it also confirms that at least one of those paths will take you to a good place. As such, if you happen to find it in your spread, you should consider it carefully, but not fear it. It tells a story of difficult choices, likely painful, but that the correct decision and a positive outcome are within your grasp.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'You have some hard work ahead of you. It may be resolved quickly, but the Chariot is a powerful card, and the labor you are undertaking will probably trend towards long and difficult. You will quite possibly experience rough roads, long uphill slopes, dead ends, and painful setbacks. A good outcome is only assured if the card is upright, but do not let yourself lose hope: This hard road will instil in you a strength of purpose, the ability to overcome through organization and endurance, and the confidence possessed only by those who have done what they thought they could not. Harnessed correctly, few forces can stand against an individual like that.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'Strength is the rawest form of power, and you possess it in some form. It is a very happy card if you are fighting illness or recovering from injury. As might be suspected, its influence over you, and the use you put it to, can trend towards light or dark. You likely trend towards facing your problems courageously, head-on, and conquering them through perseverance and will. With this ability to overcome life obstacles, though, comes the responsibility to control yourself, and it this card may be a warning to take command of your own actions or emotions before they damage you or the people you care about.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'There are times in every life, when one must step back and make a careful examination of their situations and decisions. Finding the Hermit in your spread suggests this is just such a time for you. You are in need of a period of inner reflection, away from the current demands of your position. This retreat can be physical, or a search within. Only a deep and honest introspection will lead to a solution, however.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'Symbolic of life cycles, the Wheel of Fortune speaks to good beginnings. Most likely, you will find the events foretold to be positive, but, being aspects of luck, they may also be beyond your control and influence. Tend those things you can control with care, and learn not to agonize over the ones you cannot.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'Justice is a very good card to find in your spread if you have acted with kindness and fairness towards other and, especially, if you have been a victim. It is a significant indicator of a positive resolution, although how and what sort will depend on your own experiences. If you have been unfair, abusive, or otherwise shady and immoral in your dealings, though, pay heed. For the unjust, this card is, at best, a dire warning to change your ways before retribution falls upon you, and, at worst, a simple statement that it is already too late. In neutral cases, it may simply be telling you to seek out balance in your life.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'The Hanged Man can be interpreted in two very different ways. All change is a small kind of death, as the old must die to create the new, and it may simply indicate upheaval or change in your future, perhaps beyond your control, but more likely a decision that, for good or ill, you will not be able to turn back from. The other interpretation is one of sacrifice, although whether this sacrifice is small or great may not be easily interpreted. Both interpretations imply permanence, and that you should give very careful thought to the decisions in your life.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'Death is indicative of change in your future. This change can be in almost any aspect of your life, but it will almost certainly be permanent, significant, and absolute. Death suggests a complete severance between the past and the future, and it will likely be painful. Despite the sense of loss that may accompany it, Death fills an important and natural role in life, and leads eventually to acceptance. It is a necessary part of moving forward, and you will find the changes easiest if you embrace them, rather than fight them. Expect the end of a close friendship, a job, a marriage, or even a life, but do not focus too greatly on the negative.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'An optimistic card, Temperance encourages you to find balance in your life and approach problems with a calm demeanour. It recognizes that opposing forces need not be at war within you. Tread carefully in any major decisions you make, with confidence that good decisions will lead to a good resolution for you.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'The Devil is in the business of entrapment. It signifies a situation from which there is no escape, or a road leading to one. Forewarning may let you avoid the trap, or it may not. What sort of trap, and how you might avoid it, depends on where the Devil appears in your spread, and what other cards surround it. This card does not foretell doom, only the need for prudence.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'Dark and foreboding, the Tower is the embodiment of disruption and conflict. Not just change, but the abrupt and jarring movement caused by the unforeseen and traumatic events which are part of life. The Tower in your spread is always a threat, but life inevitably involves tragedy, and you must decide whether you will face it with grace.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'The presence of Star signifies a period of respite and renewal for you. This renewal may be spiritual, physical, or both. It is a particularly positive sign if you or someone close is recovering from illness or injury. It is a light in the darkness, illuminating your future and your past.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'Something in your life is not what it seems. Perhaps a misunderstanding on your part, or a truth you cannot admit to yourself. It may also indicate something important being kept from you by another. This may be a source of worry or depression in your life, and the Moon is a strong indicator that you must rely on your intuition to see through the subterfuge.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'As an inherently good influence, finding the Sun is a positive development. It is suggestive of personal gain, and that personal goals and joy are within reach, if you are willing to invest the effort to actualize them. If you are embarking on a new personal venture, such as marriage or beginning a family, the Sun is of particular influence.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'Judgment tells a story of transition, but unlike Death or the Tower, it is not sudden change, or born of luck or intuition, but change that springs from reason. It signifies plans, often long in the making, coming to fruition. If it points towards the future, it may also speak towards the nature of the change; if there is a choice that needs to be made, ruminate and let your mind guide the decision. Logic, in this case, is a better guide than intuition. Be prepared to make a major decision in your life, likely one that will shape the next chapter of your life.',
                  style: TextStyle(
                    color: Colors.white, 
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
                  'The World is an indicator of a major and inexorable change, of tectonic breadth. This change represents a chance for you to bring about a desirable end to the Old and a good beginning to the New. It is indicative of growing maturity, a sense of inner balance and deeper understanding. It suggests that you may be approaching a more final sense of identity, and the security in the self that comes with age. It also represents the falling away of boundaries, sometimes in the effusive sense of the spiritual, but sometimes in a purely physical sense, indicating travels or journeys in the future.',
                  style: TextStyle(
                    color: Colors.white, 
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
