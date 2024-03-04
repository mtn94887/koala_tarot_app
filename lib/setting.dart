import 'package:flutter/material.dart';
import 'package:koala_tarot_app/privacy.dart';
import 'package:koala_tarot_app/terms.dart';
import 'package:koala_tarot_app/profile.dart'; // Import main.dart
import 'package:koala_tarot_app/home.dart'; // Import home.dart

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  int _selectedIndex = 0; // Index for the selected item in BottomNavigationBar
  String appVersion = '1.0.0';

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 3) {
      // Navigate to SettingScreen if Settings icon is tapped
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingScreen()),
      );
    } else if (index == 0) {
      // Navigate to TarotHomePage if Spreads icon is tapped
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TarotHomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    int currentYear = DateTime.now().year;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove back arrow icon
        title: Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold, // Make title bold
            fontSize: 24, // Increase font size
          ),
        ),
        actions: [
          GestureDetector(
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
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: [
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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
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
      ),
    );
  }
}
