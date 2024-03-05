import 'package:flutter/material.dart';

class ReadingDetailsPage extends StatelessWidget {
 final String title;
 final int cardIndex;


 ReadingDetailsPage({required this.title, required this.cardIndex});


 @override
 Widget build(BuildContext context) {
   String message = '';


  
   if (cardIndex == 5) {
     message =
         "The Empress graces your reading with a promise of abundant positivity. This card signifies a strong maternal presence, fostering harmony in relationships and signaling a potential expansion of your family or close social circle. This is a time to embrace the nurturing aspects of life, recognizing the support and love that surround you. Stay open to the harmonious energies that The Empress brings, and allow them to guide you on this positive journey.";
   }


   return Scaffold(
     appBar: AppBar(
       title: Text(title),
     ),
     body: Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
         ),
       ),
       child: SingleChildScrollView(
         padding: EdgeInsets.all(20.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            
             Image.asset(
               'assets/image_$cardIndex.png',
               fit: BoxFit.contain,
               width: double.infinity,
               height: 300,
             ),
             SizedBox(height: 20.0),
             SizedBox(height: 20.0),
             Text(
               message,
               textAlign: TextAlign.justify,
               style: TextStyle(fontSize: 16.0, color: Colors.white),
             ),
           ],
         ),
       ),
     ),
   );
 }
}

