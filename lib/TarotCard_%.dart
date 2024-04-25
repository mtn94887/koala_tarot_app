import 'package:flutter/material.dart';
import 'package:koala_tarot_app/ReadingsCategories/education.dart';
import 'package:koala_tarot_app/setting.dart';
import 'package:provider/provider.dart';


class TarotCard {
 final String image;
 final String text;
 bool isFavorite; // Add a field to track favorite status


 TarotCard({
   required this.image,
   required this.text,
   this.isFavorite = false, // Default is not favorite
 });
}


class TarotHistoryModel extends ChangeNotifier {
 final List<TarotCard> _history = [];


 List<TarotCard> get history => _history;


 void addCard(TarotCard card) {
   _history.add(card);
   notifyListeners();
 }


 void toggleFavorite(int index) {
   _history[index].isFavorite = !_history[index].isFavorite;
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
             itemCount: historyModel.history.length,
             itemBuilder: (context, index) {
               final card = historyModel.history[index];
               return Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             GestureDetector(
                               onTap: () {
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(
                                     builder: (context) => DrawCard(
                                       selectedIndex: index, selectedImage: '',
                                     ),
                                   ),
                                 );
                               },
                               child: Image.asset(
                                 card.image,
                                 width: 70,
                               ),
                             ),
                             SizedBox(height: 8),
                             Text(
                               "Education",
                               style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 20, // Adjust the font size here
                               ),
                             ),
                             IconButton(
                               onPressed: () {
                                 historyModel.toggleFavorite(index);
                               },
                               icon: Icon(
                                 card.isFavorite
                                     ? Icons.favorite
                                     : Icons.favorite_border,
                               ),
                               color: Colors.red,
                             ),
                           ],
                         ),
                       ),
                     ),
                   ],
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



