import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:koala_tarot_app/home.dart';
import 'package:koala_tarot_app/meditationpage.dart';
import 'package:koala_tarot_app/setting.dart';


class TarotCard {
 final String image;
 final String text;


 TarotCard({required this.image, required this.text});
}


class TarotHistoryModel extends ChangeNotifier {
 final List<String> cardTexts = [
   'Text for card 1',
   'Text for card 2',
   'Text for card 3',
   // Add other card texts here
 ];


 List<TarotCard> _history = [];


 List<TarotCard> get history => _history;


 void addCard(TarotCard card) {
   _history.add(card);
   notifyListeners();
 }
}


class tarothistorypage extends StatefulWidget {
 @override
 _tarothistorypageState createState() => _tarothistorypageState();
}


class _tarothistorypageState extends State<tarothistorypage> {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Color(0xFF7D5AAD),
       automaticallyImplyLeading: false,
       title: Text(
        "Card Reading History",
        style: TextStyle(
            fontSize: 23, 
            fontFamily: 'Pacifico',
            color: Colors.black,
          ),
        ),
       centerTitle: true,
       actions: <Widget>[
         IconButton(
           onPressed: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => SettingScreen()),
             );
           },
           icon: Icon(Icons.settings),
           color: Colors.black,
         )
       ],
     ),
     body: Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
         ),
       ),
       child: Consumer<TarotHistoryModel>(
         builder: (context, historyModel, child) {
           return ListView.builder(
             itemCount: (historyModel.history.length / 3).ceil(),
             itemBuilder: (context, columnIndex) {
               return Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: List.generate(
                     3,
                     (index) {
                       final cardIndex = columnIndex * 3 + index;
                       if (cardIndex < historyModel.history.length) {
                         final card = historyModel.history[cardIndex];
                         return Expanded(
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(
                               children: [
                                 Image.asset(
                                   card.image,
                                   width: 70,
                                 ),
                                 SizedBox(height: 8),
                                 Text(
                                   "Education",
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 20, // Adjust the font size here
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         );
                       } else {
                         return SizedBox(); // Placeholder for empty space
                       }
                     },
                   ),
                 ),
               );
             },
           );
         },
       ),
     ),
   );
 }
}


