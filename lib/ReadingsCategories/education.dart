import 'package:flutter/material.dart';
import 'dart:math';

import 'package:koala_tarot_app/FavoriteReadings.dart';
import 'package:provider/provider.dart';

class EducationPage extends StatelessWidget {
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
  'In education, The Fool signifies a journey of exploration and discovery. It suggests that you may be embarking on a new path or learning experience without preconceived notions or expectations. Embrace a curious and open-minded approach to your studies. Be willing to take risks, try new things, and learn from your mistakes. Remember to stay present in the moment and enjoy the process of learning for its own sake.',
  'In education, The Magician symbolizes mastery, skill, and resourcefulness. This card suggests that you have the ability to excel in your studies through your intellect, creativity, and adaptability. Use your powers of concentration and focus to manifest your educational goals into reality. You have all the tools you need to succeed academically, so trust in your abilities and stay disciplined in your approach to learning.',
  'In education, The High Priestess signifies intuition, inner wisdom, and hidden knowledge. This card suggests that you may benefit from trusting your intuition and delving deeper into your studies beyond surface-level understanding. Pay attention to your inner voice and trust your instincts when it comes to choosing courses, topics, or study methods. Embrace a sense of mystery and curiosity in your educational pursuits, and do not be afraid to explore esoteric or unconventional subjects that pique your interest.',
  'In education, The Empress symbolizes creativity, nurturing, and abundance. This card suggests that you may find success in your studies by embracing a nurturing and fertile approach to learning. Allow yourself to explore subjects that ignite your passion and creativity. Trust in your ability to absorb knowledge and wisdom like a fertile garden receiving nourishing rain. Embrace a supportive environment for your educational pursuits, whether it is through mentorship, creative expression, or hands-on learning experiences.',
  'In education, The Emperor symbolizes structure, discipline, and authority. This card suggests that you may benefit from applying a structured and disciplined approach to your studies. Set clear goals and create a plan for achieving academic success. Embrace a mindset of determination and perseverance, and do not be afraid to assert yourself in pursuit of your educational goals. Seek guidance from mentors or authority figures who can provide you with valuable insights and support on your academic journey.',
  'In education, The Hierophant symbolizes tradition, conformity, and seeking guidance from established institutions or authorities. This card suggests that you may benefit from a structured and traditional approach to your studies. Consider seeking guidance from teachers, mentors, or educational institutions that offer established programs or curriculums. Embrace the wisdom of those who have come before you and honor the traditions of your chosen field of study. Be open to learning from established sources of knowledge and wisdom, and trust in the guidance of experienced educators to help you navigate your educational journey.',
  'In education, The Lovers symbolize choices, partnerships, and alignment with your passions. This card suggests that you may be faced with important decisions or crossroads in your educational journey. Consider your options carefully and choose the path that resonates most deeply with your interests, values, and aspirations. Trust in your intuition to guide you towards educational experiences that will bring you joy, fulfillment, and personal growth. Embrace opportunities for collaboration, partnership, or mentorship that can enhance your learning journey and lead you towards greater success.',
  'In education, The Chariot symbolizes determination, focus, and drive. This card suggests that you have the ability to overcome obstacles and achieve success in your educational pursuits through sheer willpower and perseverance. Set clear goals for yourself and stay focused on your objectives, even in the face of challenges or setbacks. Trust in your inner strength and resilience to carry you through difficult times, and harness the power of your determination to propel you towards academic excellence. Embrace a disciplined approach to your studies and trust that your hard work and dedication will pay off in the end.',
  'In education, the Strength card symbolizes resilience, inner strength, and perseverance. This card suggests that you have the inner fortitude to overcome any challenges or obstacles that may arise in your educational journey. Trust in your ability to stay focused, disciplined, and determined in pursuit of your academic goals. Embrace challenges as opportunities for growth and learning, and believe in your capacity to succeed. Use your inner strength to overcome self-doubt and fear of failure, and approach your studies with confidence and courage. Remember that true strength comes from within, and trust that you have the resilience to achieve academic success.',
  'In education, The Hermit symbolizes introspection, solitude, and seeking knowledge from within. This card suggests that you may benefit from taking a step back from external distractions and delving deep into your studies on your own. Embrace the opportunity for solitary reflection and contemplation, allowing yourself to explore complex subjects at your own pace. Trust in your inner wisdom and intuition to guide you towards a deeper understanding of your academic pursuits. Consider seeking guidance from mentors or teachers who can offer you valuable insights, but ultimately, trust in your own ability to find the answers you seek within yourself.',
  'In education, The Wheel of Fortune symbolizes cycles, change, and destiny. This card suggests that you may be entering a period of change and transformation in your educational journey. Embrace the uncertainty and embrace the opportunities for growth and learning that come with it. Trust in the natural cycles of life and education, knowing that each experience, whether positive or challenging, serves to guide you towards your ultimate destiny. Stay open to new ideas, perspectives, and opportunities that may arise, and trust in the universe to guide you towards the path of knowledge and enlightenment.',
  'In education, the Justice card symbolizes balance, fairness, and accountability. This card suggests that you may need to evaluate your educational pursuits with a sense of fairness and objectivity. Consider whether your academic goals align with your values and principles, and whether you are approaching your studies with integrity and honesty. Embrace the need for discipline and responsibility in your educational endeavors, and trust that your efforts will be rewarded with academic success. Remember to consider the consequences of your actions and decisions, and strive to maintain a sense of balance and equilibrium in your pursuit of knowledge and learning.',
  'In education, The Hanged Man symbolizes a period of suspension, introspection, and a shift in perspective. This card suggests that you may be experiencing a pause or delay in your educational journey. Embrace this time as an opportunity for deep reflection and introspection. Consider whether your current path aligns with your true passions and values. Use this period of suspension to explore new interests, perspectives, and learning opportunities. Trust that this time of introspection will ultimately lead to greater clarity and insight into your educational goals and aspirations.',
  'In education, the Death card symbolizes transformation, endings, and new beginnings. This card suggests that you may be experiencing a significant shift or change in your educational pursuits. Embrace this period of transition as an opportunity for personal growth and evolution. It may be time to let go of old beliefs, habits, or academic paths that no longer serve you. Embrace the opportunity to explore new interests, perspectives, and learning opportunities that align more closely with your true passions and aspirations. Trust that this process of transformation will ultimately lead you towards a more fulfilling and authentic educational journey.',
  'In education, the Temperance card symbolizes balance, harmony, and integration. This card suggests that you may be finding equilibrium in your educational pursuits. Embrace this period of balance as an opportunity to integrate your knowledge, skills, and experiences into a cohesive whole. Strive for a harmonious approach to learning, blending theory with practice, and intellect with intuition. Trust in the process of synthesis and integration, knowing that each aspect of your education contributes to your overall growth and development.',
  'In education, The Devil card symbolizes bondage, limitation, and being chained to old beliefs or systems. This card suggests that you may be feeling trapped or restricted in your educational pursuits. It could indicate that you are overly focused on material concerns or societal expectations, leading to a sense of imprisonment in your academic journey. Embrace this opportunity to break free from limiting beliefs or oppressive structures that may be hindering your growth. Seek to expand your perspective, challenge conventional wisdom, and explore new avenues of learning that resonate with your true desires and passions.',
  'In education, The Tower card symbolizes sudden upheaval, chaos, and disruption. This card suggests that you may be experiencing a significant shake-up or unexpected change in your educational pursuits. It could indicate a sudden realization that your current academic path is no longer serving your needs or aligning with your true passions. Embrace this period of upheaval as an opportunity for growth and transformation. Use this time to reassess your goals, values, and aspirations, and to explore new avenues of learning that resonate more deeply with your authentic self. Trust that this period of upheaval will ultimately lead to greater clarity and alignment with your true educational path.',
  'In education, The Star card symbolizes hope, inspiration, and guidance. This card suggests that you are embarking on a journey of learning and growth that is filled with promise and potential. Embrace this period of inspiration as an opportunity to pursue your dreams and aspirations with optimism and enthusiasm. Trust in your inner wisdom and intuition to guide you towards the right path of study and exploration. Allow yourself to be inspired by new ideas, perspectives, and opportunities for learning. Remember to stay true to your vision and believe in your ability to achieve your educational goals, no matter the challenges you may face along the way.',
  'In education, The Moon card symbolizes confusion, illusion, and hidden truths. This card suggests that you may be facing uncertainty or confusion in your educational pursuits. It could indicate a lack of clarity about your academic path or goals, or a sense of being lost in the sea of knowledge. Embrace this period of uncertainty as an opportunity for self-reflection and introspection. Trust in your intuition to guide you towards the right path of study and exploration. Be open to exploring new ideas and perspectives, even if they seem unfamiliar or mysterious at first. Remember that clarity will come with time, and trust in the process of discovery and learning to illuminate your educational journey.',
  'In education, The Sun card symbolizes clarity, success, and enlightenment. This card suggests that you are on the path to academic achievement and personal growth. Embrace this period of clarity as an opportunity to shine brightly in your educational pursuits. Trust in your abilities and knowledge to guide you towards success. Stay focused and motivated, knowing that your hard work and dedication will lead to positive outcomes. Remember to approach your studies with enthusiasm and joy, and to celebrate your achievements along the way. Trust that the light of wisdom and knowledge will illuminate your educational journey and lead you towards greater fulfillment and enlightenment.',
  'In education, the Judgment card symbolizes a period of awakening, renewal, and self-reflection. This card suggests that you may be undergoing a significant transformation in your educational journey. It could indicate a calling to reassess your academic path or to pursue new opportunities for learning and growth. Embrace this period of awakening as an opportunity to reflect on your goals, values, and aspirations in education. Trust in your inner wisdom and intuition to guide you towards the right path of study and exploration. Remember to be open to new perspectives and opportunities for growth, and to trust in the process of self-discovery and evolution in your educational pursuits.',
  'In education, The World card symbolizes completion, fulfillment, and mastery. This card suggests that you are reaching a significant milestone in your educational journey. It could indicate the successful completion of a course of study, attainment of a degree, or mastery of a particular subject or skill. Embrace this period of fulfillment as an opportunity to celebrate your achievements and acknowledge your growth and development. Trust in your abilities and knowledge to guide you towards future success and opportunities for continued learning and exploration. Remember to remain open to new experiences and challenges, and to approach your educational journey with curiosity and enthusiasm.'
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