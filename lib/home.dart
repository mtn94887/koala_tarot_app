import 'package:flutter/material.dart';
import 'package:koala_tarot_app/ReadingsCategories/bgProblemSol.dart';
import 'package:koala_tarot_app/ReadingsCategories/dailyReading.dart';
import 'package:koala_tarot_app/ReadingsCategories/education.dart';
import 'package:koala_tarot_app/ReadingsCategories/health.dart';
import 'package:koala_tarot_app/ReadingsCategories/moneyCareer.dart';
import 'package:koala_tarot_app/ReadingsCategories/newLove.dart';
import 'package:koala_tarot_app/ReadingsCategories/prosperity.dart';
import 'package:koala_tarot_app/ReadingsCategories/quickReading.dart';
import 'package:koala_tarot_app/ReadingsCategories/relationshipReading.dart';
import 'package:koala_tarot_app/ReadingsCategories/social&friendship.dart';
import 'package:koala_tarot_app/ReadingsCategories/weeklyReading.dart';
import 'package:koala_tarot_app/ReadingsCategories/yes_noReading.dart';
import 'package:koala_tarot_app/setting.dart';
import 'package:koala_tarot_app/tarot_favorite_page.dart';
import 'package:koala_tarot_app/meditationpage.dart';
import 'package:koala_tarot_app/cards.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //app bar 
      appBar: AppBar(
        title: Text(
          "Choose the category",
           
          style: TextStyle(
            fontSize: 23, 
            fontFamily: 'Pacifico',
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFF7D5AAD),
        centerTitle: true,
        automaticallyImplyLeading: false, 
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
        
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 40,
          crossAxisSpacing: 10,
          children: [
            Education(name: "Education", iconData: Icons.school),
            Health(name: "Health", iconData: Icons.local_hospital),
            Prosperity(name: "Prosperity", iconData: Icons.diamond),
            Relationship(name: "Relationship Reading", iconData: Icons.favorite),
            NewLove(name: "New Love", iconData: Icons.energy_savings_leaf_sharp), 
            SocialReading(name: "Socialization & Friendship", iconData: Icons.format_list_numbered),
            MoneyCareer(name: "Money Career", iconData: Icons.account_balance_wallet),
            BgProblemSol(name: "Background Problem Solution", iconData: Icons.blur_on),
            YesNo(name: "Yes/No Question", iconData: Icons.sentiment_satisfied),
            DailyReading(name: "Daily Reading", iconData: Icons.today),
            WeeklyReading(name: "Weekly Reading", iconData: Icons.view_week),
            QuickReading(name: "Quick Reading", iconData: Icons.flash_on),
          ],
        ),
      ),


    );
  }
}

 
class Education extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const Education({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
         
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EducationPage(),
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
              name,
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

class Relationship extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const Relationship({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RelationshipPage(),
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
              name,
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


class Health extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const Health({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HealthPage(),
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
              name,
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


class YesNo extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const YesNo({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => YesNoPage(),
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
              name,
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

class DailyReading extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const DailyReading({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DailyReadingPage(),
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
              name,
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

class WeeklyReading extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const WeeklyReading({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WeeklyReadingPage(),
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
              name,
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

class QuickReading extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const QuickReading({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuickReadingPage(),
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
              name,
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

class SocialReading extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const SocialReading({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SocialReadingPage(),
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
              name,
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

class NewLove extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const NewLove({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewLovePage(),
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
              name,
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

class Prosperity extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const Prosperity({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProsperityPage(),
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
              name,
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

class MoneyCareer extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const MoneyCareer({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MoneyCareerPage(),
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
              name,
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

class BgProblemSol extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const BgProblemSol({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BgProblemSolPage(),
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
              name,
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