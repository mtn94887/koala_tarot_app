import 'package:flutter/material.dart';
import 'dart:math';

import 'package:koala_tarot_app/FavoriteReadings.dart';
import 'package:provider/provider.dart';

class DailyReadingPage extends StatelessWidget {
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
    'Today is a day of new beginnings and adventures. Embrace spontaneity and trust in the universe as you embark on a journey of self-discovery.',
    'You have all the tools you need to manifest your desires. Focus your energy and use your skills wisely to bring your goals to fruition.',
    'Trust your intuition and inner wisdom today. Pay attention to your dreams and subconscious messages, as they may hold valuable insights.',
    'Nurture yourself and others today. Embrace creativity, abundance, and fertility in all areas of your life.',
    'Take charge of your life and responsibilities with confidence and authority. Set clear boundaries and maintain discipline to achieve your goals.',
    'Seek guidance from tradition and wisdom today. Embrace spiritual teachings and connect with your higher self for clarity and understanding.',
    'Focus on relationships and partnerships today. Whether romantic or platonic, prioritize connection and harmony in your interactions.',
    'Move forward with determination and willpower. Overcome obstacles and stay focused on your path to success.',
    'Harness your inner strength and courage to face challenges with grace and resilience. Trust in your abilities to overcome any obstacles that come your way.',
    'Take time for solitude and introspection today. Retreat inward to find answers and seek guidance from your inner wisdom.',
    'Embrace change and the cycles of life today. Trust in the universe timing and be open to new opportunities and experiences.',
    'Seek balance and fairness in all your dealings today. Trust in divine justice and act with integrity in your decisions.',
    'Surrender to the present moment and let go of control today. Embrace a new perspective and trust that sacrifices made now will lead to greater understanding in the future.',
    'Embrace transformation and new beginnings today. Release what no longer serves you and embrace the opportunity for growth and renewal.',
    'Find harmony and balance in all aspects of your life today. Practice moderation and patience as you navigate challenges and opportunities.',
    'Be mindful of temptation and unhealthy patterns today. Release yourself from bondage and reclaim your power to make positive choices.',
    'Embrace sudden change and upheaval as opportunities for growth and transformation. Trust that endings precede new beginnings.',
    'Have faith and hope for the future today. Embrace optimism and trust in the universe to guide you toward your dreams.',
    'Navigate through uncertainty and illusion today. Trust your intuition to guide you through the shadows and into the light.',
    'Embrace joy, vitality, and success today. Bask in the warmth of happiness and allow your inner light to shine brightly.',
    'Embrace self-reflection and personal growth today. Trust in divine guidance as you make decisions that align with your highest good.',
    'Celebrate completion and fulfillment today. Recognize your achievements and embrace a sense of wholeness and unity with the universe.'
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
        child: SingleChildScrollView(
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
        if (_isFavorite){
        Provider.of<FavoriteReadings>(context , listen: false).addToFavorites(_selectedText);
      }else{
        Provider.of<FavoriteReadings>(context, listen: false).removeFromFavorites(_selectedText);
      }
      },
      icon: Icon(
        _isFavorite ? Icons.favorite : Icons.favorite_border,
        color: _isFavorite ? Colors.red : Colors.black,
        
      ),
    );
  }

}