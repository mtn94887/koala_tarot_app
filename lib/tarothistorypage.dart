import 'package:flutter/material.dart';

class tarothistorypage extends StatelessWidget {
 final List<String> cardLabels = [
   'Daily Reading',
   'Yes or No',
   'Daily Reading',
   'Daily Reading',
   'Romance',
   'Daily Reading',
   'Education',
 ];


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Center(child: Text('Card Reading History')),
     ),
     body: Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
         ),
       ),
       child: GridView.builder(
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 3,
           childAspectRatio: 60 / 100,
         ),
         itemCount: cardLabels.length,
         itemBuilder: (context, index) {
           return Card(
             child: Column(
               children: [
                 Expanded(
                   child: Placeholder(
                          child: Expanded(
                         child: Image.asset(
                           'assets/image_$index.png', // Path to your image asset
                           fit: BoxFit.cover, // Adjust the fit based on your requirement
                         ),
                       ),
                       color: Colors.grey,
                   ),
                 ),
                 Container(
                   width: double.infinity,
                   padding: EdgeInsets.all(8.0),
                   color: Color(0xFFD8D2EF),
                   child: Text(
                     cardLabels[index],
                     textAlign: TextAlign.center,
                     style: TextStyle(color: Colors.black),
                   ),
                 ),
               ],
             ),
           );
         },
       ),
     ),
     bottomNavigationBar: BottomNavigationBar(
       items: const <BottomNavigationBarItem>[
         BottomNavigationBarItem(
           icon: Icon(Icons.article_outlined),
           label: 'Spreads',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.history),
           label: 'History',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.self_improvement),
           label: 'Meditation',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.settings),
           label: 'Settings',
         ),
       ],
       selectedItemColor: const Color.fromARGB(255, 29, 24, 24),
       currentIndex: 1,
       onTap: (index) {
         switch (index) {
           case 0:
             // Handle Spreads tab tap
             break;
           case 1:
             // Handle History tab tap
             break;
           case 2:
             Navigator.pushNamed(context, '/meditation');
             break;
           case 3:
             // Handle Settings tab tap
             break;
         }
       },
     ),
   );
 }
}
