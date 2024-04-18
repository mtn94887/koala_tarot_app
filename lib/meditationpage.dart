import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:koala_tarot_app/music.dart';
import 'package:koala_tarot_app/setting.dart'; 

class MeditationPage extends StatefulWidget {
  @override
  _MeditationPageState createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage> {
  bool _isPlaying = true;
  AudioPlayer _audioPlayer = AudioPlayer(); 
  double _volume = 0.5;

  void _togglePlaying() async {
    if (_isPlaying) {
      await _audioPlayer.pause();
    } else {
       await _audioPlayer.play('assets/intro.mp3' as Source);  
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }
  void _setVolume(double value) {
    setState(() {
      _volume = value;
    });
    _audioPlayer.setVolume(_volume);
  }


  @override
  Widget build(BuildContext context) {
//------------------------------------------------------------------------Scaffold
    return Scaffold(

      //-----------------------------------------app bar 
      appBar: AppBar(
        backgroundColor: const Color(0xFF7D5AAD),
        automaticallyImplyLeading: true,
        title: const Text("Meditation"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingScreen()),
              );
            },
            icon: const Icon(Icons.settings),
            color: Colors.black,
          )
        ],
      ),


      //-----------------------------------------body:Container 
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
          
            // "Relax" and "your mind and body" text
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

            // Rectangle with play button and "Press to start breathing exercise"
            const SizedBox(height: 20),
            Center(
              child: GestureDetector(
                onTap: () {
                  // Toggle play/pause state
                   final player = AudioPlayer(); 
              player.play(AssetSource('intro.mp3'));
              player.pause();
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
                      // Change the icon based on play/pause state
                      _isPlaying
                    
                          ? Icon(
                              Icons.play_circle_filled,
                              size: 100,
                              color: Colors.white,
                            )
                          : Icon(
                              Icons.pause_circle_filled,
                              size: 100,
                              color: Colors.white,
                            ),
                          
                      const SizedBox(height: 16),
                      Text(
                        'Press to ${_isPlaying ? 'start' : 'pause'} breathing exercise',
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


            // Three-stripe menu with "Choose relaxation music" text
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => music()), // Navigate to the music page
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.menu, color: Colors.white), // Three-stripe menu icon
                  SizedBox(width: 10), // Add space between the icon and the text
                  Text(
                    'Choose relaxation music',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
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

void main() {
  runApp(MaterialApp(
    home: MeditationPage(),
  ));
}