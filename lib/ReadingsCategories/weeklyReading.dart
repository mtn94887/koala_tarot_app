import 'package:flutter/material.dart';
import 'dart:math';

import 'package:koala_tarot_app/FavoriteReadings.dart';
import 'package:provider/provider.dart';

class WeeklyReadingPage extends StatelessWidget {
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
    'Embrace a fresh start and a sense of adventure this week. Trust in the journey ahead and be open to new experiences.',
    'Utilize your skills and resources to manifest your goals and desires. You have the power to create positive change in your life.',
    'Listen to your intuition and inner wisdom. Pay attention to your dreams and trust in your inner guidance as you navigate through the week.',
    'Focus on nurturing yourself and creating a harmonious environment. Embrace self-care and surround yourself with beauty and abundance.',
    'Take a structured and disciplined approach to your goals and responsibilities. Lead with confidence and authority as you take charge of your week.',
    'Seek guidance from wise mentors or spiritual teachings. Reflect on your beliefs and values, and find inner peace through connection with higher knowledge.',
    'Focus on relationships and partnerships. Strengthen bonds with loved ones and celebrate love in all its forms.',
    'Maintain focus and determination as you overcome obstacles and achieve victory this week.',
    'Tap into your inner strength and courage to face challenges with grace and resilience.',
    'Take time for introspection and self-reflection. Retreat from the chaos of the world and seek inner guidance.',
    'Embrace the cycles of change and trust in the plan of the university for you. Stay adaptable and open to new opportunities',
    'Seek fairness and balance in your actions and decisions. Act with integrity and uphold your principles.',
    'Embrace a new perspective and let go of old patterns or beliefs that may be holding you back.',
    'Embrace transformation and release what no longer serves you. Embrace endings as opportunities for new beginnings.',
    'Find balance and moderation in all areas of your life. Practice patience and harmony as you navigate challenges.',
    'Confront any negative patterns or addictions that may be hindering your progress. Break free from bondage and reclaim your power.',
    'Embrace sudden changes or upheavals as opportunities for growth and transformation.',
    'Stay hopeful and optimistic, even in difficult times. Trust that better days are ahead and have faith in the plan of university',
    'Explore your subconscious and embrace your intuition. Trust in the guidance of your inner voice.',
    'Bask in joy and optimism as you embrace success and fulfillment. Radiate positivity and embrace your true self.',
    'Reflect on past experiences and lessons as you make decisions about your future. Embrace self-awareness and personal growth.',
    'Celebrate your achievements and completion of a significant phase. Embrace fulfillment and wholeness as you step into new beginnings.'
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