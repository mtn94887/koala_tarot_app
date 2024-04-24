import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class MeditationPage extends StatefulWidget {
 @override
 _MeditationPageState createState() => _MeditationPageState();
}


class _MeditationPageState extends State<MeditationPage> {
 bool _isPlaying = false;
 AudioPlayer _audioPlayer = AudioPlayer();
 double _volume = 0.5;


 void _togglePlaying(String musicName) async {
   if (_isPlaying) {
     _audioPlayer.stop();
     setState(() {
       _isPlaying = false;
     });
   } else {
     _audioPlayer.play(AssetSource(musicName));
     setState(() {
       _isPlaying = true;
     });
   }
 }


 void _setVolume(double value) {
   setState(() {
     _volume = value;
   });
   _audioPlayer.setVolume(_volume);
 }


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: const Color(0xFF7D5AAD),
       automaticallyImplyLeading: true,
       title: const Text("Meditation"),
       centerTitle: true,
     ),
     body: Container(
       decoration: const BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
         ),
       ),
       child: Column(
         children: [
           const Center(
             child: Column(
               children: [
                 SizedBox(height: 20),
                 Text(
                   'Relax',
                   style: TextStyle(
                     fontFamily: 'Yeseva One',
                     fontSize: 64,
                     color: Colors.white,
                   ),
                 ),
                 Text(
                   'your mind and body',
                   style: TextStyle(
                     fontSize: 16,
                     color: Colors.white,
                   ),
                 ),
               ],
             ),
           ),
           const SizedBox(height: 20),
           Center(
             child: GestureDetector(
               onTap: () {
                 // Play the selected music
                 _togglePlaying('Download.mp3');
               },
               child: Container(
                 width: 230,
                 height: 250,
                 decoration: BoxDecoration(
                   color: Color(0xFFD8D2EF),
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     _isPlaying
                         ? Icon(
                             Icons.pause_circle_filled,
                             size: 100,
                             color: Colors.white,
                           )
                         : Icon(
                             Icons.play_circle_filled,
                             size: 100,
                             color: Colors.white,
                           ),
                     const SizedBox(height: 16),
                     Text(
                       'Press to ${_isPlaying ? 'pause' : 'start'} breathing exercise',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ),
           const SizedBox(height: 20),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 const Icon(Icons.volume_mute, color: Colors.white),
                 Expanded(
                   child: Slider(
                     value: _volume,
                     onChanged: _setVolume,
                   ),
                 ),
                 const Icon(Icons.volume_up, color: Colors.white),
               ],
             ),
           ),
         ],
       ),
     ),
   );
 }
}


class Music extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Color(0xFF7D5AAD),
       title: Center(child: Text('Choose Music')),
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
           _buildMusicTile(context, 'intro.mp3'),
           _buildMusicTile(context, 'Download.mp3'),
           _buildMusicTile(context, 'deep_relaxation.mp3'),
         ],
       ),
     ),
   );
 }


 Widget _buildMusicTile(BuildContext context, String musicName) {
   return SizedBox(
     width: MediaQuery.of(context).size.width * 0.8,
     child: Container(
       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
       decoration: BoxDecoration(
         color: Color(0xFFD8D2EF),
         borderRadius: BorderRadius.circular(20),
         boxShadow: [
           BoxShadow(
             color: Colors.grey.withOpacity(0.5),
             spreadRadius: 5,
             blurRadius: 7,
             offset: Offset(0, 3),
           ),
         ],
       ),
       child: Padding(
         padding: EdgeInsets.symmetric(horizontal: 16),
         child: ListTile(
           title: Text(
             musicName,
             style: TextStyle(color: Colors.black),
           ),
           trailing: IconButton(
             icon: Icon(Icons.play_circle_fill, color: Color.fromARGB(255, 169, 117, 178)),
             onPressed: () {
               // Play the selected music
               Navigator.pop(context, musicName);
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
}


void main() {
 runApp(MaterialApp(
   home: MeditationPage(),
 ));
}


