import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController _birthdayController = TextEditingController();
  FocusNode _birthdayFocusNode = FocusNode();
  String selectedZodiacSign = 'Aries'; // Default value

  @override
  void initState() {
    super.initState();
    _birthdayController.addListener(_onBirthdayChanged);
  }

  @override
  void dispose() {
    _birthdayController.dispose();
    _birthdayFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Your Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 70.0,
                      backgroundImage: AssetImage('assets/pp.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 5,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Name:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your new name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Email:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your new email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Birthday:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _birthdayController,
                      focusNode: _birthdayFocusNode,
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        hintText: 'dd/mm/yyyy',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      _selectDate(context);
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Phone Number:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your new phone number',
                  border: OutlineInputBorder(),
                ),
              ),
             SizedBox(height: 20),
Text(
  'Zodiac Sign:',
  style: TextStyle(fontSize: 20),
),
SizedBox(height: 10),
DropdownButtonFormField<String>(
  value: selectedZodiacSign,
  onChanged: (newValue) {
    setState(() {
      selectedZodiacSign = newValue!;
    });
  },
  items: zodiacSigns.map((String sign) {
    return DropdownMenuItem<String>(
      value: sign,
      child: Text(sign),
    );
  }).toList(),
  decoration: InputDecoration(
    border: OutlineInputBorder(),
  ),
),

              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Save Changes'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to open date picker dialog
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _birthdayController.text = '${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}';
      });
    }
  }

  void _onBirthdayChanged() {
    final text = _birthdayController.text;
    if (text.length == 2 || text.length == 5) {
      _birthdayController.text = '$text/';
      _birthdayController.selection = TextSelection.fromPosition(
        TextPosition(offset: _birthdayController.text.length),
      );
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: EditScreen(),
  ));
}

final List<String> zodiacSigns = [
  'Aries', 'Taurus', 'Gemini', 'Cancer', 'Leo', 'Virgo', 'Libra', 'Scorpio',
  'Sagittarius', 'Capricorn', 'Aquarius', 'Pisces'
];
