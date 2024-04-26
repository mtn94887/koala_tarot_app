import 'package:flutter/material.dart';
import 'dart:math';

import 'package:koala_tarot_app/FavoriteReadings.dart';
import 'package:provider/provider.dart';

class BgProblemSolPage extends StatelessWidget {
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
   'Embrace spontaneity and take a leap of faith into the unknown. Trust that the journey itself holds valuable lessons and experiences, even if the path ahead seems uncertain.',
   'Utilize your skills and resources to take control of the situation. Be proactive and creative in finding solutions to your problems.',
   'Trust your intuition and inner wisdom. Take time for introspection and listen to your inner voice for guidance.',
   'Nurture yourself and your surroundings. Tap into your creativity and abundance to create a supportive environment for growth.',
   'Establish structure and boundaries. Take charge of the situation and assert your authority to bring order to chaos.',
   'Seek guidance from mentors or spiritual leaders. Embrace traditional wisdom and teachings to gain clarity and insight',
   'Make choices that align with your values and desires. Focus on building harmonious relationships and partnerships.',
   'Move forward with determination and focus. Set clear goals and overcome obstacles with confidence and perseverance.',
   'Tap into your inner strength and resilience. Face challenges with courage and patience, knowing that you have the power to overcome them.',
   'Take time for introspection and self-reflection. Withdraw from distractions to find clarity and inner guidance.',
   'Embrace change and trust in the natural cycles of life. Be open to new opportunities and adapt to the ebb and flow of circumstances',
   'Seek fairness and balance in your actions. Take responsibility for your decisions and strive for integrity and accountability.',
   'Surrender control and see things from a different perspective. Let go of preconceived notions and be open to new insights.',
   'Embrace endings as opportunities for transformation and rebirth. Let go of what no longer serves you to make way for new beginnings.',
   'Find balance and moderation in all things. Practice patience and self-control to maintain harmony in your life.',
   'Confront your fears and limitations. Break free from unhealthy patterns or attachments that hold you back from progress.',
   'Embrace sudden change as a catalyst for growth. Allow old structures to crumble to make way for new opportunities and perspectives.',
   'Have hope and trust in a brighter future. Stay optimistic and focus on your dreams, knowing that they can manifest with perseverance.',
   'Navigate through uncertainty with intuition and faith. Trust that clarity will come in time, even if the path ahead seems unclear.',
   'Embrace joy and positivity in every moment. Shine your light brightly and bask in the warmth of the blessing of life',
   'Reflect on past experiences and lessons learned. Make decisions based on wisdom and self-awareness, and embrace new opportunities for growth.',
   'Celebrate your achievements and accomplishments. Recognize that you have come full circle and are ready to embark on a new phase of your journ',
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