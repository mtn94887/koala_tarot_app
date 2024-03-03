import 'package:flutter/material.dart';
import 'package:koala_tarot_app/privacy.dart';
import 'package:koala_tarot_app/terms.dart';
import 'package:koala_tarot_app/privacy.dart';
import 'package:koala_tarot_app/terms.dart';
import 'profile.dart'; // Import main.dart

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isDarkModeEnabled = false;

  String appVersion = '1.0.0';

  @override
  Widget build(BuildContext context) {
    int currentYear = DateTime.now().year;

    return MaterialApp(
      title: 'Settings',
      theme: isDarkModeEnabled ? darkTheme : lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(
              fontWeight: FontWeight.bold, // Make title bold
              fontSize: 24, // Increase font size
            ),
          ),
          actions: [
            GestureDetector( // Wrap with GestureDetector
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileApp()), // Navigate to main.dart
                );
              },
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/pp.png'),
              ),
            ),
            SizedBox(width: 25), // Adjust spacing as needed
          ],
        ),
        body: Builder(
          builder: (context) => Column(
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(20.0),
                  children: [
                    // Switch for dark mode
                    SwitchListTile(
                      title: Text('Dark Mode'),
                      value: isDarkModeEnabled,
                      onChanged: (value) {
                        setState(() {
                          isDarkModeEnabled = value;
                        });
                      },
                    ),
                    ListTile(
                      title: Text('Help Center'),
                      onTap: () {
                        _showHelpCenterDialog(context);
                      },
                    ),
                    ListTile(
                      title: Text('Terms of Service'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TermsScreen()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Privacy Policy'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PrivacyScreen()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Rate Us!'),
                      onTap: () {
                        _showRatingDialog(context);
                      },
                    ),
                    ListTile(
                      title: Text('Logout'),
                      onTap: () {
                        // Handle logout
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Delete Account',
                        style: TextStyle(color: Colors.red),
                      ),
                      onTap: () {
                        // Handle account deletion
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Version: $appVersion',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showRatingDialog(BuildContext context) {
    List<bool> stars = [false, false, false, false, false]; // Maintain the state of each star

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text("Rate Us!"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Please rate your experience"),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 36,
                        icon: Icon(Icons.star, color: stars[0] ? Colors.orange : null), // Change color if star is selected
                        onPressed: () {
                          setState(() {
                            for (int i = 0; i < 5; i++) {
                              if (i <= 0) {
                                stars[i] = true;
                              } else {
                                stars[i] = false;
                              }
                            }
                          });
                        },
                      ),
                      IconButton(
                        iconSize: 36,
                        icon: Icon(Icons.star, color: stars[1] ? Colors.orange : null), // Change color if star is selected
                        onPressed: () {
                          setState(() {
                            for (int i = 0; i < 5; i++) {
                              if (i <= 1) {
                                stars[i] = true;
                              } else {
                                stars[i] = false;
                              }
                            }
                          });
                        },
                      ),
                      IconButton(
                        iconSize: 36,
                        icon: Icon(Icons.star, color: stars[2] ? Colors.orange : null), // Change color if star is selected
                        onPressed: () {
                          setState(() {
                            for (int i = 0; i < 5; i++) {
                              if (i <= 2) {
                                stars[i] = true;
                              } else {
                                stars[i] = false;
                              }
                            }
                          });
                        },
                      ),
                      IconButton(
                        iconSize: 36,
                        icon: Icon(Icons.star, color: stars[3] ? Colors.orange : null), // Change color if star is selected
                        onPressed: () {
                          setState(() {
                            for (int i = 0; i < 5; i++) {
                              if (i <= 3) {
                                stars[i] = true;
                              } else {
                                stars[i] = false;
                              }
                            }
                          });
                        },
                      ),
                      IconButton(
                        iconSize: 36,
                        icon: Icon(Icons.star, color: stars[4] ? Colors.orange : null), // Change color if star is selected
                        onPressed: () {
                          setState(() {
                            for (int i = 0; i < 5; i++) {
                              stars[i] = true;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
              actions: <Widget>[
                TextButton(
                  child: Text('Submit'),
                  onPressed: () {
                    // Handle submission
                    _showRatingThanks(context);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showHelpCenterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Help Center"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle 'About Tarot'
                },
                child: Text('About Tarot'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle 'Send Feedback'
                },
                child: Text('Send Feedback'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle 'Report a Bug'
                },
                child: Text('Report a Bug'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }

 void _showRatingThanks(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Thanks for Rating Us!'),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.black, // Set background color to black
    ),
  );
}

}

final lightTheme = ThemeData(
  brightness: Brightness.light,
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
);
