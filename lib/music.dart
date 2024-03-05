import 'package:flutter/material.dart';

class music extends StatelessWidget {
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
          _buildMusicTile(context, 'Music 1'),
          _buildDivider(),
          _buildMusicTile(context, 'Music 2'),
          _buildDivider(),
          _buildMusicTile(context, 'Music 3'),
          _buildDivider(),
          _buildMusicTile(context, 'Music 4'),
          _buildDivider(),
          _buildMusicTile(context, 'Music 5'),
          // Add more ListTile widgets for additional music options
        ],
      ),
    ),
  );
}




Widget _buildMusicTile(BuildContext context, String musicName) {
  return ListTile(
    title: Text(
      musicName,
      style: TextStyle(color: Colors.white),
    ),
    trailing: IconButton(
      icon: Icon(Icons.play_arrow, color: Colors.white),
      onPressed: () {
        // Add functionality when play button is tapped
      },
    ),
    onTap: () {
      // Add functionality when music tile is tapped
    },
  );
}




Widget _buildDivider() {
  return Divider(
    color: Color(0xFF7D5AAD), // Same as the lighter color in the gradient
    thickness: 1, // Adjust thickness as needed
  );
}
}


