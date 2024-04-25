import 'package:flutter/material.dart';
import 'package:koala_tarot_app/FavoriteReadings.dart';
import 'package:provider/provider.dart';
import 'package:koala_tarot_app/home.dart';
import 'package:koala_tarot_app/meditationpage.dart';
import 'package:koala_tarot_app/setting.dart';



class tarotfavoritepage extends StatefulWidget {
  @override
  _tarotfavoritepageState createState() => _tarotfavoritepageState();
}


class _tarotfavoritepageState extends State<tarotfavoritepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7D5AAD),
        automaticallyImplyLeading: false,
        title: Text(
          "Favorite Readings",
          style: TextStyle(
              fontSize: 23, 
              fontFamily: 'Pacifico',
              color: Colors.black,
            ),
          ),
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
        child: Consumer<FavoriteReadings>(
          builder: (context, favoriteReadings, child) {
            return ListView.builder(
              itemCount: favoriteReadings.favorites.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(favoriteReadings.favorites[index]),
                );
              },
            );
          },
        ),
      ),
   );
 }
}

