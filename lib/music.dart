import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class MeditationPage extends StatefulWidget {
 final String musicName;


 MeditationPage(this.musicName);


 @override
 _MeditationPageState createState() => _MeditationPageState();
}


class _MeditationPageState extends State<MeditationPage> {
 bool _isPlaying = false;
 AudioPlayer _audioPlayer = AudioPlayer();
 double _volume = 0.5;


 @override
 void dispose() {
   _audioPlayer.stop();
   super.dispose();
 }


 void _togglePlaying() async {
   if (_isPlaying) {
     _audioPlayer.stop();
     setState(() {
       _isPlaying = false;
     });
   } else {
     _audioPlayer.play(AssetSource(widget.musicName));
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
                 _togglePlaying();
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
 final List<String> song = ['intro.mp3', 'Download.mp3', 'deep_relaxation.mp3'];


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
       child: ListView.builder(
         itemCount: song.length,
         itemBuilder: (context, index) {
           return _buildMusicTile(context, song[index]);
         },
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
           onTap: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => MeditationPage(musicName)),
             );
           },
         ),
       ),
     ),
   );
 }
}


void main() {
 runApp(MaterialApp(
   home: MeditationPage("intro.mp3"),
 ));
}
