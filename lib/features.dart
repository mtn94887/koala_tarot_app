import 'package:flutter/material.dart';
import 'background.dart';

class FeaturesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF9D88BA),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Features',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 99),
              Container(
                width: double.infinity,
                height: 250,
                child: Image.asset(
                  'assets/NEW Print Sale 8x10the Fireflies - Etsy.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Explore Our Features',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 26),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FeatureButton(
                    text: 'History',
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                    onPressed: () {
                      // Show popup message for History
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("History"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "History feature proivdes you to able to rewatch your old tarot readings."
                                    "To access your previous readings:"),
                                SizedBox(height: 8),
                                Text(
                                  "• Just a simple click on the History icon.",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "• Find your desired readings history.",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: 20), // Add space between buttons
                  FeatureButton(
                    text: 'Meditation',
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                    onPressed: () {
                      // Show popup message for Meditation
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Meditation"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "Before doing Tarot Reading, it is essential to relax your mind in order to get the true result. "
                                    "That's the reason why Meditation feautre is provided for you. Here's what you need to know:"),
                                SizedBox(height: 8),
                                Text(
                                  "• You can casually open the music and can adjust the volume as you like.",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "• We provided a few lists of relaxing music so that you can choose the music as you preferred. ",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: 20), // Add space between buttons
                  FeatureButton(
                    text: 'Cards',
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                    onPressed: () {
                      // Show popup message for Cards
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Cards"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "To help your curiosity for the tarot, we provided the 'Cards' Feature. "
                                    "This feature will help you to know more about the meaning of the cards."
                                    "How this feature can help you:"),
                                SizedBox(height: 8),
                                Text(
                                  "• Once you are in the Cards Feature, the tarot cards are displayed on the screen.",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "• You can simply tap the card you want to knnow. Then, the app will lead to you to the explanation of the card.",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),

              SizedBox(
                  height: 25), // Add space between buttons and the new button
              ElevatedButton(
                onPressed: () {
                  // Navigate to the new page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BackgroundPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  
                  padding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                ),
                child: Text(
                  'Dive into the Background of Tarot',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeatureButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;

  const FeatureButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          
          padding: EdgeInsets.symmetric(vertical: 10),
          // Set fixed width for the button
          minimumSize: Size(260, 20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


// class NewPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('New Page'),
//       ),
//       body: Center(
//         child: Text('This is a new page!'),
//       ),
//     );
//   }
// }
