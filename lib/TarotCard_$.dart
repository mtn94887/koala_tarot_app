import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TarotCard {
 final String image;
 final String text;
 bool isFavorite;


 TarotCard({
   required this.image,
   required this.text,
   this.isFavorite = false,
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


class EducationPage extends StatelessWidget {
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
                     child: Column(
                       children: [
                         Image.asset(cardImages[index]),
                         SizedBox(height: 8),
                         ElevatedButton(
                           onPressed: () {
                             Provider.of<TarotHistoryModel>(context, listen: false)
                                 .toggleFavorite(index);
                           },
                           child: Text('Favorite'),
                         ),
                       ],
                     ),
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
 final List<String> cardTexts = [
   // Add your card texts here
 ];


 final int selectedIndex; // Index of the selected card


 DrawCard({
   required this.selectedIndex,
 });


 @override
 Widget build(BuildContext context) {
   // Get the selected image
   String selectedImage = 'assets/DrawCards/card${selectedIndex + 1}.png';


   return Scaffold(
     appBar: AppBar(
       title: Text("Your reading ..."),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SizedBox(
             width: 350,
             height: 350,
             child: Image.asset(selectedImage), // Use the selected image
           ),
           Padding(
             padding: EdgeInsets.all(30.0),
             child: Text(
               // Fetch corresponding text based on the selectedImage
               cardTexts[selectedIndex % 22],
               textAlign: TextAlign.center,
             ),
           ),
         ],
       ),
     ),
   );
 }
}
