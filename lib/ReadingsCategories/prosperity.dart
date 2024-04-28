import 'package:flutter/material.dart';
import 'dart:math';

import 'package:koala_tarot_app/FavoriteReadings.dart';
import 'package:provider/provider.dart';

class ProsperityPage extends StatelessWidget {
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
    'Embrace new opportunities and take a leap of faith towards prosperity. Trust that the universe will support you on your journey.',
    'Utilize your skills and resources effectively to manifest abundance and prosperity in your life. You have the power to create wealth and success.',
    'Trust your intuition and inner guidance to lead you towards prosperity. Tap into your subconscious mind for insights and inspiration.',
    'Focus on nurturing and cultivating abundance in all areas of your life. Embrace creativity and fertility as pathways to prosperity.',
    'Take charge of your finances and establish stability and security. Set clear goals and strategies to build wealth and prosperity over time.',
    'Seek guidance from mentors or financial advisors who can provide wisdom and expertise to help you achieve prosperity.',
    'Cultivate harmonious relationships and partnerships that support your financial goals. Collaborate with others to multiply your prosperity.',
    'Drive towards success and prosperity with determination and focus. Overcome obstacles and stay committed to your financial ambitions.',
    'Harness your inner strength and resilience to overcome financial challenges. Trust in your ability to persevere and thrive.',
    'Take time for introspection and reflection on your financial goals and aspirations. Seek inner guidance to illuminate your path to prosperity.',
    'Embrace the cycles of abundance and learn to flow with the ebb and flow of financial opportunities. Stay open to new possibilities.',
    'Maintain integrity and fairness in your financial dealings. Balance your financial responsibilities with ethical considerations for long-term prosperity.',
    'Surrender outdated financial beliefs or behaviors that may be holding you back from prosperity. Embrace a new perspective and willingness to adapt.',
    'Embrace transformation and release old patterns or attitudes that no longer serve your financial growth. Embrace change as a catalyst for prosperity.',
    'Find balance and moderation in your financial life. Avoid extremes and cultivate patience as you work towards prosperity.',
    'Be mindful of material attachments or negative financial habits that may hinder your prosperity. Break free from limiting beliefs and embrace abundance consciousness.',
    'Embrace financial upheavals as opportunities for growth and renewal. Trust that from chaos comes clarity and new pathways to prosperity.',
    'Have faith and optimism in your financial future. Trust in the universe to provide for your needs and guide you towards prosperity.I am the-star.',
    'Navigate through financial uncertainties with intuition and inner wisdom. Trust your instincts to lead you towards prosperity even in uncertain times.',
    'Bask in the abundance and prosperity that comes from aligning with your highest purpose. Embrace joy and gratitude for your financial blessings.',
    'Reflect on past financial decisions and learn from your experiences. Embrace a sense of accountability and empowerment as you move towards greater prosperity.',
    'Celebrate your financial achievements and success. Embrace a sense of fulfillment and completion as you continue to expand your prosperity consciousness.'
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
        Provider.of<FavoriteReadings>(context , listen: false).addToFavorites(_selectedText);
      },
      icon: Icon(
        _isFavorite ? Icons.favorite : Icons.favorite_border,
        color: _isFavorite ? Colors.red : Colors.black,
      ),
    );
  }

}