import 'package:flutter/material.dart';
import 'package:koala_tarot_app/bottom_navigation_bar.dart';
import 'package:koala_tarot_app/cards.dart';
import 'package:koala_tarot_app/home.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
import 'package:koala_tarot_app/meditationpage.dart';
import 'package:koala_tarot_app/setting.dart';
import 'package:koala_tarot_app/tarothistorypage.dart'; 



//LOGIN CODE START HERE ....
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _emailController = TextEditingController(); 
  final _passwordController = TextEditingController(); 

  Future signIn() async {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(), 
        password: _passwordController.text.trim(), 
      );
      Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => BottomNavigationBarExampleApp()),
    );
    }
    catch(e){
      print("Error sigining in: $e");
    }
    
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                      SizedBox(height: 30,),
                      Container(
                        width: 100, 
                        height: 100,
                        child: Image.asset('assets/crystal-ball.png'),
                      ),

                      SizedBox(height: 20,),
                      //photo + text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // IconButton(
                          //   icon: Icon(Icons.arrow_back),
                          //   onPressed: () {
                          //     Navigator.pop(context);
                          //   },
                          // ), 
                          Text(
                            'Login',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),


                      SizedBox(height: 20),

                      //gmail text field
                      TextField(
                        controller: _emailController,
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
                        obscureText: true,
                        controller: _passwordController, 
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),

                      //continue button
                      // GestureDetector(
                      //   onTap: signIn, 
                      //   child: Padding(
                      //     padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      //     child:Container(
                      //       padding: EdgeInsets.all(20),
                      //       decoration: BoxDecoration(
                      //         color: Colors.deepPurple, 
                      //         borderRadius: BorderRadius.circular(12),
                      //       ),
                      //       child:Center(
                      //         child:Text(
                      //           'Log In', 
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //             fontWeight: FontWeight.bold, 
                      //             fontSize: 18, 
                                  
                      //           ),
                      //         )
                      //       ),
                      //     ),
                      //   ),
                      // )
                      
                      // GestureDetector(
                      //   child: ElevatedButton(
                      //     onPressed: () {
                      //       // Navigator.push(
                      //       //   context,
                      //       //   MaterialPageRoute(builder: (context) => TarotHomePage()),
                      //       // );
                      //     }, 
                      //     child: Text('Continue'),
                      //   ),
                      // )

                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text(
                            'A new user? ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold, 
                            )
                          ),
                          Text(
                            'Register to use the app',
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold, 
                            )
                          )
                        ]
                      ),

                      SizedBox(height: 30,),

                      ElevatedButton(
                        onPressed: signIn,
                        style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(100, 50)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        elevation: MaterialStateProperty.all(4),
                      ),
                      child: Text('Log In'),
                        // child: Text(
                        //   'Log In',
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontWeight: FontWeight.bold,
                        //     fontSize: 18,
                        //   ),
                        // ),
                      ),

                      //SizedBox(height: 150),



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
