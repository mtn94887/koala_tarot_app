import 'package:flutter/material.dart';
import 'dart:math';

import 'package:koala_tarot_app/FavoriteReadings.dart';
import 'package:provider/provider.dart';

class HealthPage extends StatelessWidget {
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
    'In terms of health, The Fool encourages you to take a fresh approach to your well-being. This card suggests that it is time to break free from old habits or patterns that may be holding you back and embrace a more adventurous and spontaneous approach to your health and wellness. Try new forms of exercise, explore alternative healing modalities, and do not be afraid to take risks in pursuit of your health goals. Remember to listen to your body and trust your intuition as you navigate this journey towards greater vitality and well-being.',
    'In terms of health, The Magician represents the power of mind-body connection and self-mastery. This card suggests that you have the ability to influence your health and well-being through your thoughts, beliefs, and actions. Use your inner strength and determination to make positive changes to your lifestyle and habits. Focus on manifesting vibrant health and vitality by practicing self-care, setting clear health goals, and taking proactive steps to improve your overall well-being.',
    'In terms of health, The High Priestess encourages you to listen to your body and trust your inner wisdom when it comes to your well-being. This card suggests that you may benefit from exploring holistic or alternative healing modalities that tap into your intuition and spiritual awareness. Pay attention to the messages your body is sending you and honor your intuitive guidance when making decisions about your health and self-care practices. Embrace practices that nourish your mind, body, and spirit, and trust that your intuition will lead you towards greater vitality and balance.',
    'In terms of health, The Empress encourages you to prioritize self-care, nurturing, and well-being. This card suggests that you may benefit from embracing holistic and nurturing practices to support your health and vitality. Focus on nourishing your body, mind, and spirit with healthy foods, gentle exercise, and restorative activities. Create a nurturing environment for yourself that promotes healing and balance. Trust in your innate of body wisdom to guide you towards greater health and well-being, and honor the natural cycles of growth and renewal.',
    'In terms of health, The Emperor encourages you to take a disciplined and proactive approach to your well-being. This card suggests that you may benefit from establishing healthy routines and habits that promote physical and mental resilience. Take charge of your health by prioritizing regular exercise, nutritious eating, and stress management techniques. Set realistic goals for yourself and take consistent action towards achieving them. Embrace a sense of self-discipline and personal responsibility when it comes to your health, and trust that your efforts will lead to greater vitality and well-being.',
    'In terms of health, The Hierophant encourages you to seek guidance from trusted sources and follow established principles of wellness and healing. This card suggests that you may benefit from traditional or holistic approaches to maintaining your health and well-being. Consider consulting with healthcare professionals or wellness practitioners who can offer you sound advice and guidance based on their expertise and experience. Honor the wisdom of ancient healing traditions and rituals that have stood the test of time, and trust in the power of your body and spirit to heal and thrive.',
    'In terms of health, The Lovers encourage you to prioritize self-care, balance, and holistic well-being. This card suggests that maintaining harmony between mind, body, and spirit is essential for your overall health and vitality. Pay attention to your physical, emotional, and spiritual needs, and strive to cultivate a sense of balance and alignment in your life. Nurture loving relationships and connections that support your well-being, and make choices that honor your body and promote healing and renewal. Trust in the power of love and self-care to nourish and sustain you on your journey towards optimal health and wellness.',
    'In terms of health, The Chariot encourages you to take control of your well-being and pursue your health goals with determination and focus. This card suggests that you have the power to overcome any health challenges or obstacles that may be standing in your way. Take charge of your health by adopting healthy habits, seeking medical advice when needed, and staying committed to your wellness journey. Trust in your innate of body ability to heal and regenerate, and harness the power of your determination to achieve optimal health and vitality. Embrace the journey towards wellness with courage and resilience, and trust that you have the strength to overcome any obstacles that may arise.',
    'In terms of health, the Strength card encourages you to trust in your body innate ability to heal and recover. This card suggests that you have the inner strength and resilience to overcome any health challenges or setbacks that may arise. Trust in your body of wisdom and listen to its messages, honoring its needs with compassion and care. Use your inner strength to stay committed to your wellness journey, embracing healthy habits and self-care practices that nourish your body, mind, and spirit. Remember that true health and vitality come from within, and trust that you have the resilience to overcome any obstacles that may stand in your way.',
    'In terms of health, The Hermit encourages you to prioritize self-care, reflection, and inner healing. This card suggests that you may benefit from taking a step back from your busy life and focusing on nurturing your physical, emotional, and spiritual well-being. Embrace practices such as meditation, journaling, or spending time in nature to connect with your inner self and listen to needs of your body. Trust in your intuition to guide you towards the healing practices and lifestyle choices that will support your overall health and vitality. Remember that true health begins from within, so prioritize self-care and inner healing as you journey towards greater well-being.',
    'In terms of health, The Wheel of Fortune encourages you to trust in the natural cycles of your body and embrace the changes that come with it. This card suggests that you may be experiencing fluctuations in your health and well-being as you navigate the ups and downs of life. Embrace the opportunity to listen to your body and honor its needs with compassion and care. Trust in the power of healing and renewal to guide you towards greater health and vitality. Stay open to new treatments, therapies, and lifestyle changes that may support your overall well-being, and trust that each turn of the wheel brings you closer to optimal health and wellness.',
    'In terms of health, the Justice card encourages you to take a balanced and responsible approach to your well-being. This card suggests that you may need to evaluate your lifestyle choices and habits with a sense of fairness and objectivity. Consider whether your actions and behaviors are supporting your overall health and vitality, or if there are areas where you need to make adjustments. Embrace the need for discipline and accountability in your self-care routine, and strive to maintain a sense of balance and equilibrium in your physical, emotional, and spiritual health. Trust in the power of justice to guide you towards greater well-being and harmony in all areas of your life.',
    'In terms of health, The Hanged Man encourages you to surrender to the healing process and trust in divine timing. This card suggests that you may be experiencing a period of illness, recovery, or uncertainty about your health. Embrace this time as an opportunity to surrender control and trust in the wisdom of your body to heal itself. Use this period of suspension to focus on self-care, rest, and nurturing activities that promote healing and well-being. Trust that by surrendering to the flow of life and allowing yourself to be supported, you will emerge from this period of suspension with renewed strength and vitality.',
    'In terms of health, the Death card encourages you to embrace change and transformation in your wellness journey. This card suggests that you may be experiencing a period of healing and renewal in your physical, emotional, or spiritual health. Embrace this opportunity to release old patterns, habits, or beliefs that no longer serve your well-being. Trust that by embracing change and allowing yourself to undergo a process of transformation, you will emerge stronger, healthier, and more vibrant than ever before. Remember to be patient and compassionate with yourself as you navigate this period of growth and healing.',
    'In terms of health, the Temperance card encourages moderation, balance, and self-care. This card suggests that you may be finding equilibrium in your physical, emotional, and spiritual well-being. Embrace this period of balance as an opportunity to nurture and nourish yourself on all levels. Strive for moderation in your diet, exercise, and lifestyle choices, and prioritize self-care practices that promote harmony and vitality. Trust in the power of balance and moderation to bring about greater health and well-being in your life.',
    'In terms of health, The Devil card warns against excessive behavior, addiction, and self-destructive habits. This card suggests that you may be engaging in behaviors or patterns that are detrimental to your physical, emotional, or spiritual well-being. It could indicate a need to address issues such as overindulgence, substance abuse, or negative thought patterns that are contributing to poor health. Embrace this opportunity to break free from destructive habits and cultivate a lifestyle that supports your overall well-being. Seek guidance and support from healthcare professionals, counselors, or support groups to help you navigate the process of healing and transformation. Trust that by releasing yourself from the grip of negativity and addiction, you can reclaim your vitality and create a life of greater health and wholeness.',
    'In terms of health, The Tower card represents sudden illness, injury, or unexpected changes in your well-being. This card suggests that you may be facing a health crisis or experiencing a sudden disruption to your physical or emotional health. Embrace this period of upheaval as an opportunity for healing and transformation. Use this time to prioritize self-care, seek medical attention if necessary, and address any underlying issues or imbalances that may be contributing to your health concerns. Trust that by facing challenges head-on and taking proactive steps to care for yourself, you can emerge from this period of upheaval with renewed strength and vitality.',
    'In terms of health, The Star card represents healing, renewal, and vitality. This card suggests that you are entering a period of physical, emotional, and spiritual well-being. Embrace this time as an opportunity to focus on self-care, nourishment, and restoration. Trust in the power of healing and renewal to bring about greater health and vitality in your life. Allow yourself to release any negative energy or emotions that may be weighing you down, and focus instead on cultivating a sense of peace and balance within yourself. Remember to listen to wisdom of your body and honor its needs with love and compassion.',
    'In terms of health, The Moon card represents emotional and psychological challenges that may be affecting your well-being. This card suggests that you may be experiencing feelings of fear, anxiety, or uncertainty about your health. It could indicate that hidden emotions or subconscious patterns are influencing your physical or emotional health. Embrace this period of emotional exploration as an opportunity to delve deeper into your inner world and uncover the root causes of any health issues or concerns. Trust in the power of self-awareness and introspection to bring about healing and transformation. Remember to seek support from trusted healthcare professionals or counselors if needed, and to prioritize self-care and emotional well-being as you navigate this period of uncertainty.',
    'In terms of health, The Sun card represents vitality, well-being, and energy. This card suggests that you are experiencing a period of good health and vitality. Embrace this time as an opportunity to prioritize self-care and wellness practices that nourish your body, mind, and spirit. Trust in the power of positivity and optimism to support your overall well-being and vitality. Remember to stay active, eat nutritious foods, and engage in activities that bring you joy and fulfillment. Trust that the light of health and vitality will continue to shine brightly in your life, bringing energy and vitality to every aspect of your being.',
    'In terms of health, the Judgment card signifies a period of renewal, rejuvenation, and healing. This card suggests that you may be experiencing a time of awakening and transformation in your health and well-being. It could indicate a need to let go of old habits or patterns that are no longer serving your health, and to embrace new practices and perspectives that promote healing and vitality. Embrace this period of renewal as an opportunity to prioritize self-care, nourishment, and holistic well-being. Trust in your body innate wisdom and resilience to guide you towards greater health and vitality. Remember to listen to your body signals and honor its needs with love and compassion.',
    'In terms of health, The World card represents vitality, wholeness, and well-being. This card suggests that you are experiencing a period of physical, emotional, and spiritual balance and harmony. It could indicate a sense of completeness and fulfillment in your overall health and well-being. Embrace this time as an opportunity to prioritize self-care, nourishment, and holistic wellness practices that support your vitality and vitality. Trust in the power of balance and harmony to bring about greater health and vitality in your life. Remember to listen to your body needs and honor its wisdom with love and compassion.'
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