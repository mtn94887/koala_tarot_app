import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:koala_tarot_app/bottom_navigation_bar.dart';
import 'package:koala_tarot_app/cards.dart';
import 'package:koala_tarot_app/home.dart';
import 'package:koala_tarot_app/meditationpage.dart';
import 'package:koala_tarot_app/setting.dart';
import 'package:koala_tarot_app/tarothistorypage.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; 


class SignupPage extends StatefulWidget {
  final VoidCallback showLoginPage; 
  const SignupPage({Key? key, required this.showLoginPage}):super(key:key); 

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  //for date selection
  TextEditingController _birthdayController = TextEditingController();
  FocusNode _birthdayFocusNode = FocusNode();
  // Function to open date picker dialog
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      // Format the picked date as dd/mm/yyyy
      String formattedDate = "${picked.day}/${picked.month}/${picked.year}";
      // Update the text field with the selected date
      _birthdayController.text = formattedDate;
    }
  }


  //firebase 
  final _nameController = TextEditingController(); 
  final _emailController = TextEditingController(); 
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController(); 
  //final _birthdayController = TextEditingController(); 
  @override 
  void dispose() { 
    _nameController.dispose(); 
    _emailController.dispose(); 
    _passwordController.dispose(); 
    _confirmPasswordController.dispose(); 
    _birthdayController.dispose(); 
    super.dispose(); 
  }
  //for firebase set up 
  Future signUp() async{
    if (passwordConfirmed()){
      //create user 
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.trim(), 
      password: _passwordController.text.trim(),
      );
      //add user details 
      addUserDetails(
        _nameController.text.trim(),
        _emailController.text.trim(),
        int.parse(_birthdayController.text.trim()),
      );

    }
  }

  Future addUserDetails(String name, String gmail, int birthday) async {
    await FirebaseFirestore.instance.collection('users').add({
      'name': '', 
      'gmail': '',
      'birthday': '',
    });
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() == _confirmPasswordController){
      return true;
    }
    else {
      return false; 
    }
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


          child: SingleChildScrollView( // Wrap your Column with SingleChildScrollView
            child: Column(
              children: [
                SizedBox(height: 100),
                Container(

                  //white background box
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),


                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [

                      //back key and sign up text 
                      Row(
                        children: [
                          IconButton(
                            onPressed: widget.showLoginPage, 
                            icon: Icon(Icons.arrow_back),
                            // onPressed: () {
                            //   widget.showLoginPage;
                            // },
                          ),
                          Text(
                            "Login", 
                            style: TextStyle(
                              fontSize: 20,
                            )
                          )
                        ],
                      ),

                      SizedBox(height: 30,),
                      Container(
                        width: 100, 
                        height: 100,
                        child: Image.asset('assets/magic.png'),
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
                            'Signup',
                            style: TextStyle(
                              fontSize: 30, 
                              fontFamily: 'Pacifico',
                            ),
                          ),
                        ],
                      ),

                      //full name text field 
                      SizedBox(height: 40),
                      TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: 'Full Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),

                      //gmail text field 
                      SizedBox(height: 30),
                      TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: 'Gmail',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),

                      //password text field 
                      SizedBox(height: 30),
                      TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),

                      //confirm password text field 
                      SizedBox(height: 30),
                      TextField(
                        controller: _confirmPasswordController,
                        decoration: InputDecoration(
                          hintText: 'Confirm password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),

                      //birday selection text field 
                      SizedBox(height: 30),
                      Row(
                        children: [
                          SizedBox(
                            width: 200,
                            child: TextFormField(
                              controller: _birthdayController,
                              focusNode: _birthdayFocusNode,
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                hintText: 'dd/mm/yyyy',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 80),
                          // Calendar icon button to open date picker dialog
                          IconButton(
                            onPressed: () => _selectDate(context),
                            icon: Icon(Icons.calendar_today),
                            iconSize: 30,
                            tooltip: 'Select Date',
                          ),
                        ],
                      ),


                      //the text for transition to the other page
                      SizedBox(height: 5,),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children:[
                      //     Text(
                      //       'A new user? ',
                      //       style: TextStyle(
                      //         fontWeight: FontWeight.bold, 
                      //       )
                      //     ),
                      //     GestureDetector(
                      //       onTap: widget.showLoginPage ,
                      //       child: Text(
                      //         'Register to use the app',
                      //         style: TextStyle(
                      //           color: Colors.purple,
                      //           fontWeight: FontWeight.bold, 
                      //         )
                      //     )
                      //     )
                          
                      //   ]
                      // ),  

                      //continue button
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: signUp,
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(100, 50)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          elevation: MaterialStateProperty.all(4),
                        ),
                        child: Text('Sign Up')
                      ),

                      SizedBox(height: 100,)
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

// void main() {
//   runApp(MaterialApp(
//     home: FormPage(),
//   ));
// }


