import 'package:flutter/material.dart';


class music extends StatelessWidget {


List<String> song = [ 'deep_relaxation.mp3','intro.mp3','Download.mp3' , 'intro.mp3' , 'deep_relaxation.mp3'];




@override
Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     backgroundColor: Color(0xFF7D5AAD),


     title: Center( child:Text('Choose Music')),
   ),
   body: Container(
     decoration: BoxDecoration(
       gradient: LinearGradient(
         begin: Alignment.topCenter,
         end: Alignment.bottomCenter,
         colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
       ),
     ),
     child: ListView(
       children: [
         _buildMusicTile(context, song[0]),
         //_buildDivider(),
         _buildMusicTile(context, song[1]),
         //_buildDivider(),
         _buildMusicTile(context, song[2]),
         //_buildDivider(),
         _buildMusicTile(context, song[3]),
         //_buildDivider(),
         _buildMusicTile(context, song[4]),
         // Add more ListTile widgets for additional music options
       ],
     ),
   ),
 );
}








Widget _buildMusicTile(BuildContext context, String musicName) {
   return SizedBox(
     width: MediaQuery.of(context).size.width * 0.8, // Adjust the width as needed
     child: Container(
       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10), // Adjust margins as needed
       decoration: BoxDecoration(
         color: Color(0xFFD8D2EF), // White background color
         borderRadius: BorderRadius.circular(20), // Rounded corners
         // Add padding to the left and right sides
         boxShadow: [
           BoxShadow(
             color: Colors.grey.withOpacity(0.5),
             spreadRadius: 5,
             blurRadius: 7,
             offset: Offset(0, 3), // changes position of shadow
           ),
         ],
       ),
       child: Padding(
         padding: EdgeInsets.symmetric(horizontal: 16), // Adjust padding as needed
         child: ListTile(
           title: Text(
             musicName,
             style: TextStyle(color: Colors.black), // Text color
           ),
           trailing: IconButton(
             icon: Icon(Icons.play_circle_fill, color: Color.fromARGB(255, 169, 117, 178)), // Icon color
             onPressed: () {
               // Add functionality when play button is tapped


             },
           ),
           onTap: () {
             // Add functionality when music tile is tapped
           },
         ),
       ),
     ),
   );
 }








Widget _buildDivider() {
 return Divider(
   color: Color(0xFF7D5AAD), // Same as the lighter color in the gradient
   thickness: 1, // Adjust thickness as needed
 );
}
}
