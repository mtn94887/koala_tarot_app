import 'package:flutter/material.dart';
import 'dart:math';

class SocialReadingPage extends StatelessWidget {
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
    'I am the fool',
    'I am the magician.',
    'I am the high priestess.',
    'I am the empress',
    'I am the emperor',
    'I am the heirophant ',
    'I am the the lovers. ',
    'I am the-chariot ',
    'I am the strength',
    'I am the hermit.',
    'I am the wheel-of-fortune.',
    'I am the justice.',
    'I am the the-hanged-man',
    'I am the death.',
    'I am the temperance.',
    'I am the-devil.',
    'I am the-tower.',
    'I am the-star.',
    'I am the-moon.',
    'I am the the-sun.',
    'I am the judgement.',
    'I am the-world.'
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
