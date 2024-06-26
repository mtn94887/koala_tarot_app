import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:koala_tarot_app/music.dart';
import 'package:koala_tarot_app/setting.dart';
import 'dart:convert';

class MeditationPage extends StatefulWidget {
  @override
  _MeditationPageState createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage> {
  bool _isPlaying = false;
  AudioPlayer _audioPlayer = AudioPlayer();
  double _volume = 0.5;

  List<String> song = ['meditation1.mp3'];
  int music_index = 0;

  @override
  void dispose() {
    _audioPlayer.stop();  
    super.dispose();
  }

  void _togglePlaying(int index) async {
    if (_isPlaying) {
      _audioPlayer.stop();
      setState(() {
        _isPlaying = false;
      });
    } else {
      _audioPlayer.play(AssetSource(song[music_index]));
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

  void _stopMusic() {
    if (_isPlaying) {
      _audioPlayer.stop();
      setState(() {
        _isPlaying = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF7D5AAD),
        automaticallyImplyLeading: true,
        title: const Text("Meditation"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              _stopMusic(); 
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
                  _togglePlaying(2);
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
            GestureDetector(
              onTap: () {
                _stopMusic(); 
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Music()),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.menu, color: Colors.white),
                  SizedBox(width: 10),
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


