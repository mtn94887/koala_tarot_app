import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:koala_tarot_app/setting.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _name = 'Taylor Swift';
  String _email = 'taylorswiftweb.net@hotmail.com';
  String _birthday = 'December 13, 1989';
  String _phoneNumber = '+1(908) 500-0473';
  String _zodiacSign = 'Sagittarius';

  //for image picker 
  File? _image; 
  Future _pickImage(ImageSource source) async{
    try{
      final image = await ImagePicker().pickImage(source: source); 
      if (image == null) return; 
      File? img = File(image.path);
      setState(() {
        _image = img; 
        Navigator.of(context).pop(); 
      });
    } on PlatformException catch (e) { 
      print(e);
      Navigator.of(context).pop(); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appbar with back key and edit button ////////////////////////////////
      appBar: AppBar(
        title: Text('Personal Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
             Navigator.pop(context);
          },
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditScreen(
                    name: _name,
                    email: _email,
                    birthday: _birthday,
                    phoneNumber: _phoneNumber,
                    zodiacSign: _zodiacSign,
                    onUpdate: (String name, String email, String birthday,
                        String phoneNumber, String zodiacSign) {
                      setState(() {
                        _name = name;
                        _email = email;
                        _birthday = birthday;
                        _phoneNumber = phoneNumber;
                        _zodiacSign = zodiacSign;
                      });
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
      ////////////////////////////////////////////////////////////////


      //information on the personal profile page ////////////////////////////////
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Scroll horizontally
        child: Padding(
          padding: const EdgeInsets.all(20.0),

          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //for photo 
                  Center(
                    child:Container(
                      height: 200.0, 
                      width: 200.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, 
                        color: Colors.grey.shade200,
                      ),
                      child: Center(
                        child: _image == null ? const Text(
                          'No image selected', 
                          style: TextStyle(fontSize: 20),
                        ):ProfilePage(), 
                      ),
                    )
                  ),


                  SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person, size: 24),
                              SizedBox(width: 10),
                              Text(
                                _name,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.email, size: 24),
                              SizedBox(width: 10),
                              Text(
                                _email,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.cake, size: 24),
                              SizedBox(width: 10),
                              Text(
                                _birthday,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.phone, size: 24),
                              SizedBox(width: 10),
                              Text(
                                _phoneNumber,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.star, size: 24),
                              SizedBox(width: 10),
                              Text(
                                _zodiacSign,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.all(10),
                            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width), // Limit container width to screen width
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SingleChildScrollView(
                              child: Text(
                                getZodiacSignDescription(_zodiacSign),
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//EDIT SCREEN PAGE ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class EditScreen extends StatefulWidget {
  final String name;
  final String email;
  final String birthday;
  final String phoneNumber;
  final String zodiacSign;
  final Function(String, String, String, String, String) onUpdate;

  EditScreen({
    required this.name,
    required this.email,
    required this.birthday,
    required this.phoneNumber,
    required this.zodiacSign,
    required this.onUpdate,
  });

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _birthdayController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _zodiacSignController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.name;
    _emailController.text = widget.email;
    _birthdayController.text = widget.birthday;
    _phoneNumberController.text = widget.phoneNumber;
    _zodiacSignController.text = widget.zodiacSign;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Your Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Use Navigator.of(context).pop()
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _nameController,
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
                controller: _emailController,
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
                controller: _phoneNumberController,
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
                value: widget.zodiacSign,
                onChanged: (newValue) {
                  setState(() {
                    _zodiacSignController.text = newValue!;
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
                    widget.onUpdate(
                      _nameController.text,
                      _emailController.text,
                      _birthdayController.text,
                      _phoneNumberController.text,
                      _zodiacSignController.text,
                    );
                    Navigator.of(context).pop(); // Use Navigator.of(context).pop()
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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _birthdayController.text =
            '${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}';
      });
    }
  }
}

final List<String> zodiacSigns = [
  'Aries',
  'Taurus',
  'Gemini',
  'Cancer',
  'Leo',
  'Virgo',
  'Libra',
  'Scorpio',
  'Sagittarius',
  'Capricorn',
  'Aquarius',
  'Pisces'
];

String getZodiacSignDescription(String sign) {
  Map<String, String> zodiacDescriptions = {
    'Aries': 'Aries is the first sign of the zodiac, and that\'s pretty much how those born under this sign see themselves: first. Aries are the leaders of the pack, first in line to get things going.',
    'Taurus': 'Taurus is an earth sign represented by the bull. Like their celestial spirit animal, Taureans enjoy relaxing in serene, bucolic environments, surrounded by soft sounds, soothing aromas, and succulent flavors.',
    'Gemini': 'Have you ever been so busy that you wished you could clone yourself just to get everything done? That\'s the Gemini experience in a nutshell. Appropriately symbolized by the celestial twins, this air sign was interested in so many pursuits that it had to double itself.',
    'Cancer': 'Roll out the red carpet because Leo has arrived. Leo is represented by the lion and these spirited fire signs are the kings and queens of the celestial jungle.',
    'Leo': 'Leo is represented by the lion and these spirited fire signs are the kings and queens of the celestial jungle. They’re delighted to embrace their royal status: Vivacious, theatrical, and passionate, Leos love to bask in the spotlight and celebrate themselves.',
    'Virgo': 'Virgo is an earth sign historically represented by the goddess of wheat and agriculture, an association that speaks to Virgo’s deep-rooted presence in the material world. Virgos are logical, practical, and systematic in their approach to life.',
    'Libra': 'Libra is an air sign represented by the scales, an association that reflects Libra\'s fixation on balance and harmony. Libra is obsessed with symmetry and strives to create equilibrium in all areas of life.',
    'Scorpio': 'Scorpio is one of the most misunderstood signs of the zodiac. Because of its incredible passion and power, Scorpio is often mistaken for a fire sign. In fact, Scorpio is a water sign that derives its strength from the psychic, emotional realm.',
    'Sagittarius': 'Represented by the archer, Sagittarians are always on a quest for knowledge. The last fire sign of the zodiac, Sagittarius launches its many pursuits like blazing arrows, chasing after geographical, intellectual, and spiritual adventures.',
    'Capricorn': 'The last earth sign of the zodiac, Capricorn is represented by the sea goat, a mythological creature with the body of a goat and the tail of a fish. Accordingly, Capricorns are skilled at navigating both the material and emotional realms.',
    'Aquarius': 'Despite the "aqua" in its name, Aquarius is actually the last air sign of the zodiac. Aquarius is represented by the water bearer, the mystical healer who bestows water, or life, upon the land.',
    'Pisces': 'Pisces, a water sign, is the last constellation of the zodiac. It\'s symbolized by two fish swimming in opposite directions, representing the constant division of Pisces\'s attention between fantasy and reality.',
  };

  return zodiacDescriptions[sign] ?? 'No description available.';
}
