import 'package:flutter/material.dart';
import 'package:koala_tarot_app/home.dart';

class FormPage extends StatelessWidget {
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
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Text(
                            'Signup',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Full Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Gmail',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Confirm password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
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
                          SizedBox(width: 40),
                          // Calendar icon button to open date picker dialog
                          IconButton(
                            onPressed: () => _selectDate(context),
                            icon: Icon(Icons.calendar_today),
                            iconSize: 30,
                            tooltip: 'Select Date',
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TarotHomePage()),
                          );
                        }, 
                        child: Text('Continue')
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

void main() {
  runApp(MaterialApp(
    home: FormPage(),
  ));
}
