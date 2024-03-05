import 'package:flutter/material.dart';
import 'package:koala_tarot_app/home.dart';
import 'dart:math';

class TarotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TarotCardPage(),
    );
  }
}

class TarotCardPage extends StatelessWidget {
  final List<Map<String, String>> tarotCards = List.generate(
    22,
    (index) => {"name": "Card ${index + 1}", "image": "assets/card1.png"},
  );

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.of(context).size.width / 4;
    final cardHeight = MediaQuery.of(context).size.height / 4;

    tarotCards.shuffle();

    return Scaffold(
      appBar: AppBar(
  title: Text(
     "TAROT",
    style: TextStyle(color: Colors.black),
      ),
  backgroundColor: Colors.white,
  centerTitle: true, // Center the title horizontally
),

       // backgroundColor: Colors.white,
    //  ),
      body: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          childAspectRatio: cardWidth / cardHeight,
        ),
        itemCount: tarotCards.length,
        itemBuilder: (context, index) {
          return CardItem(
            tarotCard: tarotCards[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CardReadingPage(
                    tarotCard: tarotCards[index]["name"]!,
                    tarotCards: tarotCards,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final Map<String, String> tarotCard;
  final VoidCallback onTap;

  CardItem({required this.tarotCard, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Image.asset(
          tarotCard["image"] ?? "assets/placeholder.png",
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}


class CardReadingPage extends StatelessWidget {
  final String tarotCard;
  final List<Map<String, String>> tarotCards;

  CardReadingPage({required this.tarotCard, required this.tarotCards});

  @override
  Widget build(BuildContext context) {
    tarotCards.shuffle();

    return Scaffold(
      appBar: AppBar(
        title: Text(tarotCard),
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView( // Wrap your Column with SingleChildScrollView
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/c2.png',
                  width: 400,
                  height: 300,
                ),
                SizedBox(height: 50), // Adjusted this spacing
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0), // Added horizontal padding
                  child: Text(
                    "The Empress graces your reading with a promise of abundant positivity. This card signifies a strong maternal presence, fostering harmony in relationships and signaling a potential expansion of your family or close social circle. "
                    "This is a time to embrace the nurturing aspects of life, recognizing the support and love that surround you. Stay open to the harmonious energies that The Empress brings, and allow them to guide you on this positive journey.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.yellow, 
                    ),
                    textAlign: TextAlign.center,
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
