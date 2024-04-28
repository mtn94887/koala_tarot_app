import 'package:flutter/material.dart';
import 'dart:math';

import 'package:koala_tarot_app/FavoriteReadings.dart';
import 'package:provider/provider.dart';

class NewLovePage extends StatelessWidget {
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
    'When it comes to new love, The Fool represents the excitement and uncertainty of embarking on a new romantic journey. You may feel a sense of freedom and liberation as you explore this new connection, but remember to approach it with caution and mindfulness. While it is important to embrace the thrill of the unknown, be sure to temper your enthusiasm with practicality and self-awareness. Allow yourself to be vulnerable and open to the possibilities that love can bring, but also maintain a sense of balance and perspective.',
    'When it comes to new love, The Magician indicates a time of manifestation and attraction. This card suggests that you have the power to attract the type of love you desire into your life by being clear about your intentions and taking inspired action. Trust in your ability to create a meaningful connection with someone who aligns with your values and desires. Be open to new opportunities for love and use your charm and charisma to manifest the romantic relationship youhave been dreaming of.',
    'When it comes to new love, The High Priestess indicates a deep spiritual connection and soulful resonance. This card suggests that you may be drawn to someone who reflects your innermost desires and values on a profound level. Trust your intuition when forming new romantic connections and pay attention to the subtle energies and synchronicities that arise. Be open to exploring the spiritual and emotional depths of your connection, and trust that the universe is guiding you towards a love that aligns with your journey of soul.',
    'When it comes to new love, The Empress indicates a time of blossoming romance and emotional fulfillment. This card suggests that you may soon encounter a new romantic connection that brings joy, abundance, and nurturing energy into your life. Embrace the beauty and sensuality of this new relationship, and allow yourself to be open to love in all its forms. Trust in the natural flow of attraction and connection, and let your heart lead you towards a fulfilling and harmonious partnership.',
    'When it comes to new love, The Emperor indicates a relationship built on stability, security, and mutual respect. This card suggests that you may be drawn to someone who embodies qualities of strength, leadership, and reliability. Embrace the opportunity to establish a solid foundation for your new relationship based on trust, loyalty, and commitment. Be clear about your intentions and expectations from the beginning, and approach the relationship with a sense of maturity and responsibility. Trust in the potential for a lasting and fulfilling connection grounded in mutual support and understanding.',
    'When it comes to new love, The Hierophant indicates a relationship that is based on shared values, beliefs, or cultural traditions. This card suggests that you may be drawn to someone who aligns with your spiritual or philosophical outlook on life. Embrace the opportunity to form a deep and meaningful connection with this person, and honor the traditions and rituals that may be important to both of you. Be open to exploring the spiritual and emotional depths of your connection, and trust in the guidance of your intuition and higher wisdom as you navigate the journey of love together.',
    'When it comes to new love, The Lovers indicate a powerful and transformative connection with a potential partner. This card suggests that you may be drawn to someone who resonates deeply with your heart and soul. Embrace the opportunity to explore this new relationship with an open heart and mind. Trust in the chemistry and compatibility you share with this person, and allow your connection to unfold naturally. Be honest and authentic in your interactions, and let love lead the way as you embark on this exciting new chapter of your life.',
    'When it comes to new love, The Chariot indicates a period of forward movement and progress in your romantic life. This card suggests that you may be embarking on a new romantic journey filled with excitement and potential. Trust in your ability to take the reins and steer this new relationship towards a positive outcome. Be proactive in pursuing the object of your affection and take decisive action to move the relationship forward. Embrace the adventure of new love with confidence and determination, and trust that the universe is guiding you towards a fulfilling and passionate connection.',
    'When it comes to new love, the Strength card indicates a relationship built on trust, compassion, and mutual respect. This card suggests that you may be drawn to someone who embodies qualities of inner strength and emotional resilience. Embrace the opportunity to cultivate a healthy and fulfilling connection with this person, and trust in your ability to navigate the challenges that arise in the early stages of a new relationship. Use your inner strength to be vulnerable and open with your partner, and approach love with courage and authenticity. Remember that true love requires patience, understanding, and a willingness to show vulnerability, and trust that your emotional resilience will help you build a strong and lasting bond with your partner.',
    'When it comes to new love, The Hermit indicates a period of introspection and self-discovery before entering into a new relationship. This card suggests that you may need to spend some time alone, reflecting on your past experiences and identifying what you truly want and need in a partner. Embrace the opportunity to explore your own inner world and connect with your own inner guidance before seeking out a new romantic connection. Trust in the wisdom of solitude to lead you towards a deeper understanding of yourself and what you desire in love, and be patient as you allow the right person to enter your life in divine timing.',
    'When it comes to new love, The Wheel of Fortune indicates a fateful encounter or significant turning point in your romantic life. This card suggests that you may be entering a new relationship that is guided by destiny and fate. Embrace the opportunity to connect with someone who aligns with your values and desires, knowing that your paths have crossed for a reason. Trust in the power of the universe to bring you together with the right person at the right time, and stay open to the lessons and growth that come with new love. Embrace the journey of love with an open heart and mind, knowing that each twist and turn of fate is leading you towards greater fulfillment and happiness.',
    'When it comes to new love, the Justice card indicates a relationship built on honesty, integrity, and mutual respect. This card suggests that you may be drawn to someone who embodies qualities of fairness and equality in their approach to love and relationships. Embrace the opportunity to establish a connection based on trust and authenticity, and strive to build a partnership grounded in fairness and balance. Be open and honest with your potential partner, and trust in the power of justice to guide you towards a healthy and fulfilling relationship. Remember to approach love with a sense of integrity and accountability, and trust that the universe will bring you together with someone who shares your values and principles.',
    'When it comes to new love, The Hanged Man indicates a period of waiting, surrender, and introspection. This card suggests that you may be in a state of limbo when it comes to matters of the heart. Embrace this time as an opportunity to reflect on your desires, intentions, and expectations in love. Use this period of suspension to cultivate self-awareness and clarity about what you truly want and need in a relationship. Trust that by surrendering to the flow of love and allowing things to unfold naturally, you will attract the right person into your life at the perfect time.',
    'When it comes to new love, the Death card indicates a transformative and profound connection. This card suggests that you may be entering into a relationship that will bring about significant changes and growth in your life. Embrace this period of transformation as an opportunity for deep healing and renewal within your heart. It may be time to let go of past hurts, fears, or limitations that have been holding you back from experiencing true love. Trust that by embracing change and allowing yourself to be vulnerable, you will attract a partner who is aligned with your journey of soul and who will support you in becoming your highest self.',
    'When it comes to new love, the Temperance card indicates a harmonious and balanced connection. This card suggests that you may be entering into a relationship that is built on mutual respect, understanding, and compatibility. Embrace this period of harmony as an opportunity to cultivate a deep and meaningful connection with your partner. Strive for balance and moderation in your interactions, and trust in the process of getting to know each other at a steady and measured pace. Trust that by staying true to yourself and your values, you will attract a partner who is aligned with your desires and intentions.',
    'When it comes to new love, The Devil card indicates potential challenges or obstacles in forming a healthy, balanced relationship. This card suggests that you may be attracted to someone who embodies qualities of intensity, passion, or allure, but who may also bring negativity or dysfunction into your life. It could indicate a need to be cautious and discerning in your romantic pursuits, and to be mindful of any red flags or warning signs that may arise. Embrace this opportunity to prioritize self-love and self-respect, and to set boundaries that protect your emotional well-being. Trust that by honoring your values and intuition, you can attract a love that uplifts and empowers you, rather than entangles you in unhealthy patterns.',
    'When it comes to new love, The Tower card indicates sudden and unexpected changes in your romantic life. This card suggests that you may be experiencing a whirlwind romance or a passionate connection that comes with its own set of challenges and upheavals. It could indicate a need to proceed with caution and mindfulness, as this relationship may bring about significant changes and revelations in your life. Embrace this period of excitement and uncertainty as an opportunity for growth and exploration in matters of the heart. Trust that by being open and honest with yourself and your partner, you can navigate the ups and downs of new love with grace and resilience.',
    'When it comes to new love, The Star card indicates a time of hope, optimism, and new beginnings. This card suggests that you may be entering into a relationship that is filled with promise and potential. Embrace this period of inspiration as an opportunity to connect with someone who shares your values, dreams, and aspirations. Trust in the power of love to guide you towards a deeper understanding of yourself and your partner. Allow yourself to be vulnerable and open to the possibilities that love brings into your life. Remember to trust in divine timing and believe that the universe will bring you together with the right person at the right time.',
    'When it comes to new love, The Moon card indicates a period of uncertainty and emotional vulnerability. This card suggests that you may be entering into a relationship that is shrouded in mystery or ambiguity. It could indicate that hidden emotions or fears are influencing your connection with a new partner. Embrace this period of exploration as an opportunity to delve deeper into your feelings and desires. Trust in the power of intuition to guide you towards greater understanding and connection with your partner. Remember to be patient and compassionate with yourself and your partner as you navigate the ups and downs of new love.',
    'When it comes to new love, The Sun card indicates a period of happiness, excitement, and fulfillment. This card suggests that you may be entering into a relationship that is filled with joy and positivity. Embrace this time as an opportunity to explore new connections and experiences with an open heart and mind. Trust in the power of love to bring about growth and transformation in your life. Remember to approach new love with authenticity and enthusiasm, and to celebrate the beauty and magic of connection. Trust that the light of love will continue to shine brightly in your life, illuminating your path towards greater happiness and fulfillment.',
    'When it comes to new love, the Judgment card indicates a period of awakening, transformation, and new beginnings. This card suggests that you may be entering into a relationship that has the potential to bring about profound growth and change in your life. Embrace this period of awakening as an opportunity to explore new connections and experiences with an open heart and mind. Trust in the power of love to inspire and uplift you, and to guide you towards greater fulfillment and happiness. Remember to be true to yourself and your values, and to approach new love with authenticity and vulnerability. Trust that the universe is guiding you towards a love that is aligned with your highest good and journey of soul.',
    ' When it comes to new love, The World card indicates a sense of completion and fulfillment in your romantic life. This card suggests that you may be entering into a relationship that feels deeply fulfilling and satisfying. It could indicate a sense of harmony and unity with a new partner, where you feel a strong connection and sense of completeness. Embrace this period of fulfillment as an opportunity to explore new depths of love and intimacy with your partner. Trust in the power of love to bring about growth and transformation in your life. Remember to approach new love with an open heart and mind, and to be grateful for the joy and fulfillment it brings into your life.'
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