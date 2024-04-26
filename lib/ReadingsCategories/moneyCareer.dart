import 'package:flutter/material.dart';
import 'dart:math';

import 'package:koala_tarot_app/FavoriteReadings.dart';
import 'package:provider/provider.dart';

class MoneyCareerPage extends StatelessWidget {
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
    'In the realm of finances, The Fool indicates a need to take a leap of faith and trust in the universe to provide for your financial needs. This card suggests that you may be at the beginning of a new financial journey, one that requires you to embrace a sense of adventure and spontaneity when it comes to your finances. Be open to new opportunities for earning and investing money, but also be mindful of the risks involved. Trust your instincts and do not be afraid to take calculated risks in pursuit of financial freedom and abundance.',
    'In the realm of finances, The Magician symbolizes the power of manifestation and abundance. This card suggests that you have the ability to attract wealth and prosperity into your life through your skills, talents, and resourcefulness. Trust in your ability to create financial success by harnessing your creativity, innovation, and entrepreneurial spirit. Focus on manifesting your financial goals into reality by taking inspired action and leveraging your unique abilities and talents to create abundance and prosperity.',
    'In the realm of finances, The High Priestess signifies hidden opportunities and intuitive insights. This card suggests that you may need to trust your instincts and tap into your inner wisdom when it comes to financial matters. Pay attention to subtle signs and synchronicities that may point you towards lucrative opportunities or wise investments. Trust that you have the ability to manifest abundance and prosperity by listening to your intuition and following your inner guidance when making decisions about money and wealth management.',
    'In the realm of finances, The Empress signifies abundance, prosperity, and material well-being. This card suggests that you may experience financial growth and abundance in your life. Trust in the abundance of the universe to provide for your financial needs and desires. Embrace a mindset of gratitude and abundance, and focus on nurturing your financial resources through wise investments, responsible spending, and cultivating multiple streams of income. Trust that your efforts will be rewarded with long-term financial stability and prosperity.',
    'In the realm of finances, The Emperor signifies control, organization, and financial stability. This card suggests that you have the ability to take charge of your financial situation and build a solid foundation for long-term prosperity. Take a strategic and disciplined approach to managing your finances, and prioritize saving, investing, and building wealth over the long term. Set clear financial goals for yourself and develop a plan for achieving them. Trust in your ability to make wise decisions and assert control over your financial destiny, and you will reap the rewards of your efforts in due time.',
    'In the realm of finances, The Hierophant signifies financial stability, adherence to established principles, and seeking guidance from trusted advisors. This card suggests that you may benefit from following traditional financial practices and seeking advice from experts in the field. Consider consulting with financial planners, accountants, or other professionals who can offer you sound guidance and help you make informed decisions about your money matters. Honor the importance of saving, investing, and managing your finances responsibly, and trust in the wisdom of those who can help you navigate the complexities of the financial world.',
    'In the realm of finances, The Lovers signify alignment with your values, financial partnerships, and choices that resonate with your heart. This card suggests that you may be faced with important financial decisions or opportunities that require you to consider your values and priorities. Trust in your intuition to guide you towards choices that align with your long-term financial goals and aspirations. Collaborate with trusted advisors or partners who share your vision and values, and make financial decisions with integrity and authenticity. Embrace opportunities for financial growth and abundance that are in alignment with your desires of heart, and trust that prosperity will flow naturally as you follow your true path.',
    'In the realm of finances, The Chariot signifies success, achievement, and victory. This card suggests that you have the drive and determination to achieve your financial goals and overcome any obstacles that may be standing in your way. Trust in your ability to take control of your finances and steer them towards a positive outcome. Be proactive in pursuing opportunities for financial growth and advancement, and take decisive action to move closer to your financial aspirations. Embrace a mindset of abundance and success, and trust that your hard work and determination will lead to prosperity and financial freedom.',
    'In the realm of finances, the Strength card signifies confidence, determination, and financial resilience. This card suggests that you have the inner strength and resourcefulness to overcome any financial challenges or setbacks that may arise. Trust in your ability to make sound financial decisions and take proactive steps to secure your financial future. Use your inner strength to stay disciplined and focused on your financial goals, even in the face of uncertainty or adversity. Remember that true financial strength comes from managing your resources wisely and trusting in your ability to adapt and thrive in any economic situation.',
    'In the realm of finances, The Hermit signifies frugality, introspection, and financial planning. This card suggests that you may benefit from taking a closer look at your financial situation and reassessing your spending habits and financial goals. Embrace the opportunity to create a budget, prioritize your expenses, and make informed decisions about your money. Trust in your ability to make wise financial choices and plan for your future with prudence and foresight. Remember that true wealth comes from within, so take the time to connect with your inner wisdom and intuition as you navigate your financial journey towards greater stability and abundance.',
    'In the realm of finances, The Wheel of Fortune signifies cycles of abundance and prosperity, as well as periods of financial uncertainty. This card suggests that you may be experiencing changes in your financial situation as you navigate the fluctuations of the economy and your own personal circumstances. Embrace the opportunity to adapt and evolve with the changing tides of fortune, knowing that each cycle brings new opportunities for growth and prosperity. Stay open to new avenues for earning and managing money, and trust in the universe to guide you towards financial stability and abundance. Remember that true wealth comes from within, so stay grounded in your values and trust in the power of destiny to lead you towards financial success.',
    'In the realm of finances, the Justice card signifies balance, integrity, and financial accountability. This card suggests that you may need to evaluate your financial situation with a sense of fairness and objectivity. Consider whether your financial decisions and actions are aligned with your values and principles, and whether you are approaching your finances with honesty and integrity. Embrace the need for responsible budgeting and financial planning, and strive to maintain a sense of balance and equilibrium in your financial affairs. Trust in the power of justice to guide you towards wise financial decisions and greater prosperity in the long run.',
    'In the realm of finances, The Hanged Man signifies a period of financial uncertainty, surrender, and reassessment. This card suggests that you may be experiencing a setback or delay in your financial plans. Embrace this time as an opportunity to reassess your priorities, values, and goals when it comes to money. Use this period of suspension to reflect on your spending habits, financial decisions, and long-term aspirations. Trust that by surrendering to the flow of abundance and allowing yourself to be guided by intuition, you will find new opportunities for financial growth and stability.',
    'In the realm of finances, the Death card signifies endings and new beginnings in your financial situation. This card suggests that you may be experiencing a period of financial transformation and renewal. Embrace this opportunity to release old financial habits, beliefs, or limitations that are holding you back from experiencing abundance and prosperity. Trust that by embracing change and allowing yourself to undergo a process of financial transformation, you will attract new opportunities for wealth and success into your life. Remember to stay open to new ideas, strategies, and investments that may lead to greater financial stability and prosperity in the long run.',
    'In the realm of finances, the Temperance card signifies balance, moderation, and financial harmony. This card suggests that you may be finding equilibrium in your financial situation. Embrace this period of balance as an opportunity to manage your finances with wisdom and prudence. Strive for moderation in your spending, saving, and investing habits, and seek to create a sense of financial harmony and stability in your life. Trust in the power of patience and moderation to bring about greater financial abundance and prosperity over time.',
    'In the realm of finances, The Devil card signifies financial bondage, materialism, and unhealthy attachments to wealth. This card suggests that you may be overly focused on material possessions or driven by a desire for financial gain at any cost. It could indicate a need to reassess your relationship with money and to examine any patterns of greed, overspending, or financial irresponsibility that may be undermining your financial stability. Embrace this opportunity to cultivate a healthier, more balanced approach to finances, one that prioritizes financial security and well-being over materialistic desires. Seek to release yourself from the grip of consumerism and cultivate a sense of gratitude and abundance for what you already have. Trust that by freeing yourself from unhealthy attachments to wealth, you can create a more sustainable and fulfilling relationship with money in the long run.',
    'In the realm of finances, The Tower card signifies sudden financial loss, instability, or unexpected changes in your financial situation. This card suggests that you may be facing a financial crisis or experiencing a sudden disruption to your financial stability. It could indicate a need to reassess your financial priorities, budget, and spending habits in light of unexpected circumstances. Embrace this period of upheaval as an opportunity to create a more solid and sustainable financial foundation for yourself. Trust that by facing financial challenges head-on and making necessary adjustments, you can rebuild your financial stability and security over time.',
    'In the realm of finances, The Star card signifies hope, abundance, and prosperity. This card suggests that you are entering a period of financial stability and growth. Embrace this time as an opportunity to manifest your dreams and goals in the realm of money and material resources. Trust in the power of abundance and prosperity to flow into your life effortlessly. Allow yourself to release any limiting beliefs or fears around money, and instead focus on cultivating a mindset of abundance and gratitude. Remember to stay open to new opportunities for financial growth and to trust in divine guidance to lead you towards greater prosperity and success.',
    'In the realm of finances, The Moon card signifies financial insecurity, confusion, and hidden obstacles. This card suggests that you may be facing uncertainty or confusion in your financial situation. It could indicate that hidden factors or subconscious patterns are influencing your financial decisions or circumstances. Embrace this period of uncertainty as an opportunity to delve deeper into your relationship with money and uncover any hidden beliefs or fears that may be holding you back. Trust in the power of intuition and inner guidance to help you navigate financial challenges and make wise decisions. Remember to stay grounded and practical in your approach to money, and to seek support from financial advisors or mentors if needed as you work towards greater financial stability and abundance.',
    'In the realm of finances, The Sun card signifies abundance, prosperity, and success. This card suggests that you are experiencing a period of financial stability and growth. Embrace this time as an opportunity to celebrate your achievements and to continue building a solid foundation for financial success. Trust in the power of abundance and prosperity to flow into your life effortlessly. Remember to stay positive and optimistic about your financial goals and aspirations, and to trust in your ability to attract wealth and success. Trust that the light of financial abundance will continue to shine brightly in your life, bringing prosperity and success to your endeavors.',
    'In the realm of finances, the Judgment card signifies a period of financial awakening, clarity, and empowerment. This card suggests that you may be experiencing a time of evaluation and reassessment in your financial situation. It could indicate a need to let go of old beliefs or patterns that are limiting your financial success, and to embrace new opportunities for abundance and prosperity. Embrace this period of awakening as an opportunity to take stock of your financial goals and aspirations, and to make empowered choices that align with your values and priorities. Trust in your ability to attract wealth and success, and to create a solid foundation for financial abundance and security. Remember to approach your finances with clarity, confidence, and integrity, and to trust in the process of financial evolution and growth.',
    'In the realm of finances, The World card signifies success, abundance, and prosperity. This card suggests that you are experiencing a period of financial fulfillment and achievement. It could indicate the successful completion of a financial goal or the attainment of a level of financial security and stability. Embrace this time as an opportunity to celebrate your achievements and acknowledge your abundance and prosperity. Trust in the power of abundance and prosperity to flow into your life effortlessly. Remember to continue making wise financial decisions and to trust in your ability to attract wealth and success in the future.'
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