import 'package:flutter/material.dart';
import 'package:koala_tarot_app/home.dart'; 

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(

          //purple decoration bar 
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
            ),
          ),


          child: SingleChildScrollView(
            child: Column(
              children: [
              
                SizedBox(height: 100),

                Container(

                  //white background 
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),

                  padding: EdgeInsets.all(20),


                  //text boxes 
                  child: Column(
                    children: [

                      //back key + text
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Text(
                            'Login',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),


                      SizedBox(height: 70),

                      //gmail text field
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Gmail',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),

                      SizedBox(height: 30),

                      //password text field 
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),

                      SizedBox(height: 30),

                      //continue button
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TarotHomePage()),
                          );
                        }, 
                        child: Text('Continue'),
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
