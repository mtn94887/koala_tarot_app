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
    'Embrace spontaneity and openness in your social interactions. Be willing to take risks and make new friends without fear.',
    'Use your charm and communication skills to connect with others and build strong friendships. You have the power to influence social situations positively',
    'Trust your intuition and empathetic nature in your social interactions. Listen attentively to others and offer support when needed.',
    'Nurture and care for your friendships like they are precious gardens. Create a warm and inviting atmosphere for social gatherings.',
    'Provide stability and leadership within your social circle. Be a reliable and trustworthy friend whom others can depend on.',
    'Seek guidance from wise and experienced friends who can offer valuable advice and mentorship in social matters.',
    'Focus on building deep and meaningful connections with others. Strengthen bonds of love and friendship through mutual respect and understanding.',
    'Take charge of your social life and pursue your goals with determination and enthusiasm. Be proactive in organizing social events and gatherings.',
    'Show compassion and understanding towards your friends, and offer them support during challenging times. Your kindness will strengthen your social bonds.',
    'Take time for introspection and self-reflection within your social circle. Withdraw briefly to recharge and gain clarity on your social connections.',
    'Embrace the natural ebb and flow of social dynamics. Be adaptable and open to new friendships and experiences as they arise.',
    'Strive for fairness and equality in your social interactions. Treat others with respect and integrity to maintain healthy relationships.',
    'Be open to seeing social situations from a different perspective. Release any preconceived notions and be willing to compromise for the greater good of your friendships.',
    'Embrace the endings and transformations that occur within your social circle. Let go of friendships that no longer serve your growth and welcome new connections.',
    'Find balance and harmony in your social life. Seek moderation and avoid extremes in your interactions with others.',
    'Be mindful of toxic relationships and negative influences within your social circle. Break free from unhealthy patterns and prioritize your well-being.',
    'Embrace sudden changes or disruptions in your social life as opportunities for growth and renewal. Trust that upheavals lead to positive transformations.',
    'Cultivate hope and optimism within your friendships. Inspire others with your positivity and be a beacon of light in their lives.',
    'Navigate through uncertainties and misunderstandings with empathy and intuition. Trust your instincts to guide you in resolving conflicts within your social circle.',
    'Radiate warmth and joy in your social interactions. Be authentic and celebrate the friendships that bring light into your life.',
    'Reflect on your past social experiences and learn from them. Make conscious choices to nurture and strengthen your friendships.',
    'Celebrate the interconnectedness of your social network and the sense of unity it brings. Embrace the diversity of your friendships and cherish the world of possibilities they offer.'
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
