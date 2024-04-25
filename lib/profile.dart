import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:koala_tarot_app/ImagePicking/common_buttons.dart';
import 'package:koala_tarot_app/ImagePicking/select_photo_options_screen.dart';
import 'package:koala_tarot_app/setting.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key?key}): super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  //temp code 
   String? userName;


  final user = FirebaseAuth.instance.currentUser!;

  List<String> docIDs = []; 

  Future getDocId() async { 
    await FirebaseFirestore.instance.collection('users').get().then((snapshot)=> snapshot.docs.forEach((document){
      print(document.reference); 
      docIDs.add(document.reference.id); 
    }));
  }

  @override 
  void initState() { 
    getDocId(); 
    super.initState(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  builder: (context) => EditScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                      ),
                    ),
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
                                'Name: ',
                                style: TextStyle(fontSize: 16),
                              ),
                              // Display the user's name
                              Text(
                                // 
                                '',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.email, size: 24),
                              SizedBox(width: 10),
                              Text(
                                'Email: ' + user.email!,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),

                          Expanded(
                            child: FutureBuilder(
                              future: getDocId(),
                              builder: (context, snapshot) {
                                return ListView.builder(
                                  itemCount: docIDs.length,
                                  itemBuilder: (context, index){
                                  return ListTile(
                                    title: Text('name'),
                                  );
                                });
                              },
                            ),
                          )
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
 const EditScreen({super.key});
  static const id = 'EditScreen';
  @override
 _EditScreenState createState() => _EditScreenState();
}


class _EditScreenState extends State<EditScreen> {


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
  //for image cropper
 Future<File?> _cropImage({required File imageFile}) async {
   CroppedFile? croppedImage =
       await ImageCropper().cropImage(sourcePath: imageFile.path);
   if (croppedImage == null) return null;
   return File (croppedImage.path);
 }


 void _showSelectPhotoOptions(BuildContext context) {
   showModalBottomSheet(
     context: context,
     isScrollControlled: true,
     shape: const RoundedRectangleBorder(
       borderRadius: BorderRadius.vertical(
         top: Radius.circular(25.0),
       ),
     ),
     builder: (context) => DraggableScrollableSheet(
         initialChildSize: 0.28,
         maxChildSize: 0.4,
         minChildSize: 0.28,
         expand: false,
         builder: (context, scrollController) {
           return SingleChildScrollView(
             controller: scrollController,
             child: SelectPhotoOptionsScreen(
               onTap: _pickImage,
             ),
           );
         }),
   );
 }


 @override
 Widget build(BuildContext context) {
   return Scaffold(


     //app bar with edit your profile text and back key
     appBar: AppBar(
       title: Text('Edit Your Profile'),
       leading: IconButton(
         icon: Icon(Icons.arrow_back),
         onPressed: () {
           Navigator.of(context).pop(); // Use Navigator.of(context).pop()
         },
       ),
     ),


     //body with editing images and text fields
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(20.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [


             //for photo
             Center(
               child: GestureDetector(
                   behavior: HitTestBehavior.translucent,
                   onTap: () {
                     _showSelectPhotoOptions(context);
                   },
                   child: Center(
                     child: Container(
                         height: 200.0,
                         width: 200.0,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color: Colors.grey.shade200,
                         ),
                         child: Center(
                           child: _image == null
                               ? const Text(
                                   'No image selected',
                                   style: TextStyle(fontSize: 20),
                                 )
                               : CircleAvatar(
                                   backgroundImage: FileImage(_image!),
                                   radius: 200.0,
                                 ),
                         )),
                   ),
               ),
             ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                 SizedBox(height: 30),
                 ElevatedButton(
                   onPressed: () => _showSelectPhotoOptions(context),
                   child: Text('Select Photo'), // Add text or an icon as the child of the ElevatedButton
                   style: ButtonStyle(
                     minimumSize: MaterialStateProperty.all(Size(100,50)),
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                       RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10.0),
                       )
                     ),
                     backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 247, 199, 255)),
                   ),
                 )
               ],
             )

           ],
         ),
       ),
     ),
   );
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



