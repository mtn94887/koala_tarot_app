import 'package:flutter/material.dart';
import 'dart:math';

import 'package:koala_tarot_app/FavoriteReadings.dart';
import 'package:provider/provider.dart';

class RelationshipPage extends StatelessWidget {
  final List<String> cardImages = List.generate(
      22, (index) => 'assets/DrawCards/card${index + 1}.png');  

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
        itemCount: 4,  
        itemBuilder: (BuildContext context, int rowIndex) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                5,  
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
  final int selectedIndex;  

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
  ];  

   final List<String> cardTexts = [
    ' In relationships, The Fool symbolizes spontaneity, freedom, and new beginnings. If you are in a committed relationship, this card may indicate a need to inject some spontaneity and adventure into your partnership. Embrace new experiences together and do not be afraid to step outside of your comfort zone. If you are single, The Fool suggests that you may meet someone who embodies these qualities soon. Stay open to unexpected connections and embrace the journey ahead with an open heart',
    ' In relationships, The Magician signifies the power of communication, manifestation, and connection. This card suggests that you have the ability to create the type of relationship you desire through clear communication, intention setting, and action. Use your skills of persuasion and charisma to foster a deeper connection with your partner or potential partners. Be mindful of the energy you are putting into your relationships and focus on manifesting positive outcomes through your words and actions.',
    ' In relationships, The High Priestess symbolizes depth, intuition, and psychic connection. This card suggests that you may be entering a phase of introspection and spiritual growth within your relationships. Trust your intuition to guide you in understanding the deeper dynamics at play and listen to your inner wisdom when navigating issues with your partner or loved ones. Pay attention to subtle cues and non-verbal communication, as there may be important messages waiting to be revealed beneath the surface..',
    ' In relationships, The Empress signifies love, harmony, and emotional fulfillment. This card suggests that you may experience deep connections and nurturing relationships in your romantic life. If you are in a committed partnership, this card indicates a period of growth and abundance within your relationship. Embrace the loving and nurturing energy that surrounds you, and focus on cultivating a harmonious and supportive partnership. If you are single, The Empress encourages you to open your heart to love and trust that the universe will bring the right person into your life at the perfect time.',
    ' In relationships, The Emperor represents stability, leadership, and responsibility. This card suggests that you may be called upon to take on a leadership role within your relationships. Whether you are in a romantic partnership, familial relationship, or friendship, embrace your role as a pillar of strength and stability. Lead with integrity, fairness, and compassion, and strive to create a secure and supportive environment for those you care about. Set healthy boundaries and assert your authority when necessary, but also be open to collaboration and compromise in order to maintain harmony and balance.',
    ' In relationships, The Hierophant represents commitment, tradition, and spiritual connection. This card suggests that you may be entering into a relationship that is grounded in shared values, beliefs, or traditions. Embrace the opportunity to form a deep and meaningful connection with someone who shares your spiritual or philosophical outlook. Honor the commitment and dedication required to nurture a long-lasting partnership, and be open to the guidance and support of mentors or spiritual advisors who can help you navigate the complexities of your relationship journey. ',
    ' In relationships, The Lovers represent deep connections, harmony, and union. This card suggests that you may be experiencing a strong bond with a romantic partner or soulmate. Embrace the love and connection you share with your partner, and nurture your relationship with care and devotion. Communicate openly and honestly with each other, and strive to maintain harmony and balance in your partnership. Trust in the power of love to guide you through challenges and strengthen your bond as you navigate the journey of life together. ',
    ' In relationships, The Chariot represents control, direction, and forward movement. This card suggests that you may be taking charge of your relationships and steering them towards a positive outcome. Whether you are in a committed partnership or seeking new connections, trust in your ability to assert control over your love life and navigate towards greater harmony and fulfillment. Take decisive action to address any challenges or conflicts that may arise, and strive to maintain balance and unity within your relationships. Trust in your intuition to guide you towards the right path, and embrace the journey of growth and transformation that lies ahead. ',
    ' In relationships, the Strength card represents compassion, patience, and emotional resilience. This card suggests that you have the ability to navigate challenges and conflicts within your relationships with grace and integrity. Trust in your capacity to show empathy and understanding towards your partner or loved ones, even in difficult times. Use your inner strength to maintain balance and harmony in your relationships, and approach conflicts with compassion and kindness. Remember that true strength in relationships lies in vulnerability and authenticity, and trust that your emotional resilience will help you cultivate deeper connections with others.',
    ' In relationships, The Hermit represents introspection, solitude, and inner guidance. This card suggests that you may be in a period of introspection and self-discovery within your relationships. Embrace the opportunity to retreat from the outside world and connect with your inner self on a deeper level. Use this time of solitude to reflect on your needs, desires, and values in relationships, and trust in your inner guidance to lead you towards greater clarity and understanding. Remember that true connection with others begins with a deep understanding of yourself, so use this time wisely to nurture your inner world and strengthen your relationships from the inside out.',
    ' In relationships, The Wheel of Fortune represents cycles, fate, and karmic connections. This card suggests that you may be experiencing shifts and changes in your relationships as you navigate the ups and downs of life together. Embrace the ebb and flow of your relationships, knowing that each experience serves to deepen your connection and help you grow together. Trust in the power of destiny and fate to guide you towards the people and relationships that are meant to be in your life. Stay open to the lessons and opportunities for growth that come with each turn of the wheel, and trust that love will prevail through all of life changes.',
    ' In relationships, the Justice card represents fairness, equality, and harmony. This card suggests that you may be called upon to evaluate the dynamics of your relationships with a sense of objectivity and impartiality. Consider whether your relationships are based on mutual respect, trust, and cooperation, or if there are imbalances that need to be addressed. Embrace the need for open and honest communication with your partner or loved ones, and strive to resolve conflicts and issues in a fair and equitable manner. Trust in the power of justice and integrity to strengthen your relationships and foster greater harmony and understanding.',
    ' In relationships, The Hanged Man represents a period of surrender, letting go, and seeing things from a different angle. This card suggests that you may be experiencing a period of stagnation or uncertainty in your relationships. Embrace this time as an opportunity to surrender control and allow things to unfold naturally. Use this period of suspension to reflect on your relationships and gain a new perspective. Trust that by letting go of preconceived notions and expectations, you will gain a deeper understanding of yourself and your connections with others.',
    ' In relationships, the Death card represents endings, transformation, and rebirth. This card suggests that you may be experiencing a significant change or transition in your relationships. Embrace this period of transformation as an opportunity for growth and renewal within your partnerships. It may be time to let go of relationships that no longer serve your highest good or to release old patterns and dynamics that are holding you back. Trust that by embracing change and allowing space for new growth, you will attract more fulfilling and harmonious relationships into your life.',
    ' In relationships, the Temperance card represents harmony, cooperation, and compromise. This card suggests that you may be finding balance and stability within your relationships. Embrace this period of harmony as an opportunity to cultivate mutual understanding and respect with your partner or loved ones. Strive for open and honest communication, and be willing to compromise and negotiate to find common ground. Trust in the power of patience and moderation to bring about greater harmony and unity within your relationships.',
    ' In relationships, The Devil represents toxicity, codependency, and unhealthy attachments. This card suggests that you may be in a relationship that is characterized by control, manipulation, or emotional bondage. It could indicate that you or your partner are being consumed by negative patterns or addictions that are detrimental to your well-being. Embrace this opportunity to break free from toxic dynamics and reclaim your autonomy and self-worth. Seek support from trusted friends, family, or professionals to help you navigate the process of liberation and healing. Trust that by releasing yourself from unhealthy attachments, you can create space for healthier, more fulfilling relationships in the future.',
    ' In relationships, The Tower represents sudden upheaval, conflict, and revelation. This card suggests that you may be experiencing a significant shake-up or breakdown in your relationships. It could indicate a sudden realization that the foundation of a partnership is unstable or that long-standing issues are coming to the surface. Embrace this period of upheaval as an opportunity for growth and healing within your relationships. Use this time to address any underlying issues or conflicts with honesty and transparency, and to rebuild your connections on a stronger and more authentic foundation. Trust that by facing challenges head-on, you can create deeper and more meaningful relationships in the long run.',
    ' In relationships, The Star represents hope, healing, and renewal. This card suggests that you are entering a period of emotional fulfillment and connection within your relationships. Embrace this time as an opportunity to nurture and strengthen your bonds with your partner or loved ones. Trust in the power of love and compassion to heal past wounds and bring about greater harmony and understanding in your relationships. Allow yourself to be vulnerable and open to receiving love and support from others. Remember to communicate openly and honestly with your partner, and to express gratitude for the blessings that love brings into your life.',
    ' When it comes to new love, The Moon card indicates a period of uncertainty and emotional vulnerability. This card suggests that you may be entering into a relationship that is shrouded in mystery or ambiguity. It could indicate that hidden emotions or fears are influencing your connection with a new partner. Embrace this period of exploration as an opportunity to delve deeper into your feelings and desires. Trust in the power of intuition to guide you towards greater understanding and connection with your partner. Remember to be patient and compassionate with yourself and your partner as you navigate the ups and downs of new love.',
    ' In relationships, The Sun represents happiness, harmony, and fulfillment. This card suggests that you are experiencing a period of joy and abundance within your relationships. Embrace this time as an opportunity to bask in the warmth of love and connection with your partner or loved ones. Trust in the power of positivity and authenticity to strengthen your bonds and bring about greater harmony and understanding. Remember to express gratitude for the blessings of love and companionship in your life, and to nurture your relationships with care and attention. Trust that the light of love will continue to shine brightly in your life, bringing warmth and joy to your heart.',
    ' In relationships, the Judgment card represents a period of evaluation, forgiveness, and redemption. This card suggests that you may be experiencing a time of reflection and reconciliation within your relationships. It could indicate a need to evaluate past actions and decisions in order to heal and move forward. Embrace this period of reflection as an opportunity to release old resentments, forgive yourself and others, and create a fresh start in your relationships. Trust in the power of forgiveness and compassion to bring about greater understanding and connection with your partner or loved ones. Remember to communicate openly and honestly, and to approach your relationships with humility and grace.',
    ' In relationships, The World represents harmony, unity, and fulfillment. This card suggests that you are experiencing a deep sense of connection and completion within your relationships. It could indicate a period of harmony and balance with your partner or loved ones, where you feel fully supported and understood. Embrace this time as an opportunity to celebrate the love and connection you share with others. Trust in the power of mutual respect and understanding to strengthen your bonds and bring about greater fulfillment and happiness in your relationships. Remember to express gratitude for the blessings of love and companionship in your life, and to nurture your relationships with care and attention.'
  ]; 

  int selectedIndex = 0;  
  bool isFavorite = false;
  _DrawCardState({required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
     
    List<int> indices = List.generate(22, (index) => index);
    indices.shuffle();

     
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
                width: 350,  
                height: 350,  
                child: Image.asset(selectedImage),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),  
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