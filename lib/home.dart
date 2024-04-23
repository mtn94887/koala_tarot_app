import 'package:flutter/material.dart';
import 'package:koala_tarot_app/ReadingsCategories/education.dart';
import 'package:koala_tarot_app/ReadingsCategories/relationshipReading.dart';
import 'package:koala_tarot_app/setting.dart';
import 'package:koala_tarot_app/tarothistorypage.dart';
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

//TAROT RADING PAGE STARTS HERE....
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
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xFF7D5AAD),
        centerTitle: true,
        automaticallyImplyLeading: false, // Remove back arrow button
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


      //each category box 
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
            Relationship(name: "Relationship Reading", iconData: Icons.favorite),
            // CategoryCard(categoryName: "Health", iconData: Icons.local_hospital),
            // CategoryCard(categoryName: "Yes/No Question", iconData: Icons.sentiment_satisfied),
            // CategoryCard(categoryName: "Daily Reading", iconData: Icons.today),
            // CategoryCard(categoryName: "Weekly Reading", iconData: Icons.view_week),
            // CategoryCard(categoryName: "Quick Reading", iconData: Icons.flash_on),
            // CategoryCard(categoryName: "Three-Card Reading", iconData: Icons.format_list_numbered),
            // CategoryCard(categoryName: "New Love", iconData: Icons.energy_savings_leaf_sharp),
            // CategoryCard(categoryName: "Prosperly", iconData: Icons.diamond),
            // CategoryCard(categoryName: "Money Career", iconData: Icons.account_balance_wallet),
            // CategoryCard(categoryName: "Background Problem Solution", iconData: Icons.blur_on),
          ],
        ),
      ),


    );
  }
}

//for education box 
class Education extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const Education({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
        // Navigate to the TarotCardPage
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

//for relationship box 
class Relationship extends StatelessWidget{
  final String name; 
  final IconData iconData; 

  const Relationship({required this.name, required this.iconData});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
        // Navigate to the TarotCardPage
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


// class CategoryCard extends StatelessWidget {
//   final String categoryName;
//   final IconData iconData;

//   const CategoryCard({required this.categoryName, required this.iconData});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // Navigate to the TarotCardPage
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => TarotCardPage(),
//           ),
//         );
//       },
//       child: Card(
//         elevation: 2,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(iconData),
//             SizedBox(height: 8),
//             Text(
//               categoryName,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
