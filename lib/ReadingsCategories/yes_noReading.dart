import 'package:flutter/material.dart';
import 'dart:math';

import 'package:koala_tarot_app/FavoriteReadings.dart';
import 'package:provider/provider.dart';

class YesNoPage extends StatelessWidget {
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
                      child: Image.asset('assets/pinkcover.png'),
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

  class DrawCard extends StatefulWidget {
  final int selectedIndex; // Index of the selected card

  DrawCard({required this.selectedIndex});

  @override
  _DrawCardState createState() => _DrawCardState(selectedIndex: 0);
}

class _DrawCardState extends State<DrawCard>{

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
    ' YES, embrace the unknown with enthusiasm.',
    ' NO, trust your intuition and look deeper for answers.',
    ' YES, focus on nurturing and abundance.',
    ' YES, assert your authority and take control.',
    ' YES, assert your authority and take control.',
    ' NO, seek guidance from tradition and wisdom.',
    ' MAYBE, consider the harmony and balance in your relationships.',
    ' YES, move forward with determination and willpower.',
    ' YES, tap into your inner strength to overcome obstacles.',
    ' NO, take time for introspection before making decisions.',
    ' MAYBE, embrace change and go with the flow.',
    ' YES, seek balance and fairness in your actions.',
    ' MAYBE, surrender to the present moment and gain perspective.',
    ' YES, embrace transformation and new beginnings.',
    ' MAYBE, find balance and moderation in your life.',
    ' NO, be mindful of temptation and negative patterns.',
    ' MAYBE, be prepared for sudden change and upheaval.',
    ' YES, have faith and hope for the future.',
    ' MAYBE, navigate through uncertainty with intuition.',
    ' YES, embrace joy and success.',
    ' YES, reflect on your choices and embrace personal growth.',
    ' YES, celebrate completion and fulfillment.'
  ];

  int selectedIndex = 0; // Index of the selected card
  bool isFavorite = false;
  _DrawCardState({required this.selectedIndex});

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
        actions: <Widget>[

          FavoriteIconWidget(selectedText : selectedText),
          
        ],
        
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

class FavoriteIconWidget extends StatefulWidget {

  final String selectedText;

  FavoriteIconWidget({required this.selectedText});

  @override
  _FavoriteIconWidgetState createState() => _FavoriteIconWidgetState(selectedText);
}

class _FavoriteIconWidgetState extends State<FavoriteIconWidget> {
  bool _isFavorite = false;
  final String _selectedText;

  _FavoriteIconWidgetState(this._selectedText);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        
        setState(() {
          _isFavorite = !_isFavorite;
        });
        Provider.of<FavoriteReadings>(context , listen: false).addToFavorites(_selectedText);
      },
      icon: Icon(
        _isFavorite ? Icons.favorite : Icons.favorite_border,
        color: _isFavorite ? Colors.red : Colors.black,
      ),
    );
  }

}