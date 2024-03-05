import 'package:flutter/material.dart';

class readingdetailspage extends StatelessWidget {
 final String title;


 readingdetailspage({required this.title});


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(title),
     ),
     body: Center(
       child: Text('Details for $title'),
     ),
   );
 }
}
