import 'package:flutter/material.dart';
import 'dart:math';

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
        centerTitle: true,
      ),
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
  final List<String> cardImages = [
    'assets/image_0 copy.png',
    'assets/image_1 copy.png',
    'assets/image_2 copy.png',
    'assets/image_3 copy.png',
    'assets/image_4 copy.png',
    'assets/image_5 copy.png',
    'assets/image_6 copy.png',
  ];

  CardReadingPage({required this.tarotCard, required this.tarotCards});

  @override
  Widget build(BuildContext context) {
    int cardIndex = tarotCards.indexWhere((card) => card['name'] == tarotCard);

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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  cardImages[cardIndex],
                  width: 400,
                  height: 300,
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
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

void main() {
  runApp(MaterialApp(
    home: TarotCardPage(),
  ));
}
