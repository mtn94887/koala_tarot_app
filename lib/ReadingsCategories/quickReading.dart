import 'package:flutter/material.dart';
import 'dart:math';

class QuickReadingPage extends StatelessWidget {
  final List<String> cardImages = List.generate(
      22, (index) => 'assets/DrawCards/card${index + 1}.png'); // List of 20 card images

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Choose one card",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 4, // Number of rows
        itemBuilder: (BuildContext context, int rowIndex) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                5, // Number of cards per row
                (int columnIndex) {
                  int index = rowIndex * 5 + columnIndex;
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DrawCard(
                            selectedIndex: index,
                          ),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Image.asset('assets/card1.png'),
                      //child: Image.asset(cardImages[index]),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class DrawCard extends StatelessWidget {
  final List<String> cardImages = [
    'assets/DrawCards/card1.png',
    'assets/DrawCards/card2.png',
    'assets/DrawCards/card3.png',
    'assets/DrawCards/card4.png',
    'assets/DrawCards/card5.png',
    'assets/DrawCards/card6.png',
    'assets/DrawCards/card7.png',
    'assets/DrawCards/card8.png',
    'assets/DrawCards/card9.png',
    'assets/DrawCards/card10.png',
    'assets/DrawCards/card11.png',
    'assets/DrawCards/card12.png',
    'assets/DrawCards/card13.png',
    'assets/DrawCards/card14.png',
    'assets/DrawCards/card15.png',
    'assets/DrawCards/card16.png',
    'assets/DrawCards/card17.png',
    'assets/DrawCards/card18.png',
    'assets/DrawCards/card19.png',
    'assets/DrawCards/card20.png',
    'assets/DrawCards/card21.png',
    'assets/DrawCards/card22.png'
  ]; // List of 22 card images

  final List<String> cardTexts = [
    'Embrace spontaneity and new beginnings with optimism and trust.',
    'Use your skills and resources to manifest your desires into reality.',
    'Trust your intuition and inner wisdom for guidance.',
    'Embrace abundance, creativity, and nurturing energy.',
    'Take control of your life with authority and structure.',
    'Seek guidance from tradition and spiritual teachings.',
    'Focus on relationships and harmonious connections.',
    'Move forward with determination and willpower.',
    'Harness your inner strength and courage to overcome challenges.',
    'Take time for introspection and inner guidance.',
    'Embrace change and trust in the cycles of life.',
    'Seek balance and fairness in all your actions.',
    'Surrender to the present moment and gain new perspectives.',
    'Embrace transformation and let go of what no longer serves you.',
    'Find harmony and balance in all aspects of your life.',
    'Break free from negative patterns and embrace liberation.',
    'Embrace upheaval as an opportunity for growth and change.',
    'Have hope, faith, and optimism for the future.',
    'Navigate through uncertainty with intuition and trust.',
    'Bask in joy, vitality, and success.',
    'Reflect on past actions and embrace personal growth.',
    'Celebrate completion, fulfillment, and unity with the universe.'
  ]; // List of 22 card texts

  final int selectedIndex; // Index of the selected card

  DrawCard({required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    // Shuffle the indices to get random images and texts
    List<int> indices = List.generate(22, (index) => index);
    indices.shuffle();

    // Get the random image and its corresponding text
    String selectedImage = cardImages[indices[selectedIndex % 22]];
    String selectedText = cardTexts[indices[selectedIndex % 22]];

    return Scaffold(
      appBar: AppBar(
        title: Text("Your reading ..."),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350, // specify width
              height: 350, // specify height
              child: Image.asset(selectedImage),
            ),
            Padding(
              padding: EdgeInsets.all(30.0), // adjust the padding as needed
              child: Text(
                selectedText,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
