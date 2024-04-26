import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
 import 'package:koala_tarot_app/FavoriteReadings.dart';
import 'package:koala_tarot_app/get_favorite_reading.dart';
 import 'package:provider/provider.dart';
 import 'package:koala_tarot_app/home.dart';
 import 'package:koala_tarot_app/meditationpage.dart';
 import 'package:koala_tarot_app/setting.dart';


class tarotfavoritepage extends StatefulWidget {
  @override
  _tarotfavoritepageState createState() => _tarotfavoritepageState();
}

class _tarotfavoritepageState extends State<tarotfavoritepage> {
  
  //displaying ids 
  List<String> docIDs = []; 

  Future getDocId() async{
    String documentId = FirebaseAuth.instance.currentUser?.uid??'';
    await FirebaseFirestore.instance.collection('users').doc(documentId).collection('favorites').get().then(
      (snapshot)=> snapshot.docs.forEach((document) {
        print(document.reference);
        docIDs.add(document.reference.id); 
      })
    ); 
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //app bar 
      appBar: AppBar(
        backgroundColor: Color(0xFF7D5AAD),
        automaticallyImplyLeading: false,
        title: Text(
          "Card Reading History",
          style: TextStyle(
              fontSize: 23, 
              fontFamily: 'Pacifico',
              color: Colors.black,
            ),
          ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingScreen()),
              );
            },
            icon: Icon(Icons.settings),
            color: Colors.black,
          )
        ],
      ),

      //body
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
          ),
        ),

        child: FutureBuilder(
          future: getDocId(),
          builder: ((context, snapshot) {
            return ListView.builder(
              itemCount: docIDs.length, 
              itemBuilder: (context, index){
                // return ListTile (
                //   //title:Text(docIDs[index])
                //   //title: GetFavoriteReading(documentId: docIDs[index])
                //   if (ocIDs[index] != null){
                //     title: GetFavoriteReading(documentId: docIDs[index]),
                //   } else { 
                //     title: '', 
                //   }
                // );
                return ListTile(
                  title: docIDs[index] != null
                      ? GetFavoriteReading(documentId: docIDs[index])
                      : SizedBox(), // or Text('') if you prefer
                );

              },
            );
          }  
          )
        )
        //
        // child: Consumer<FavoriteReadings>(
        //   builder: (context, favoriteReadings, child) {
        //     return ListView.builder(
        //       itemCount: favoriteReadings.favorites.length,
        //       itemBuilder: (context, index) {
        //         return ListTile(
        //           //title: Text(favoriteReadings.favorites[index]),
        //         );
        //       },
        //     );
        //   },
        // ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:koala_tarot_app/FavoriteReadings.dart';
// import 'package:provider/provider.dart';
// import 'package:koala_tarot_app/home.dart';
// import 'package:koala_tarot_app/meditationpage.dart';
// import 'package:koala_tarot_app/setting.dart';



// class tarotfavoritepage extends StatefulWidget {
//   @override
//   _tarotfavoritepageState createState() => _tarotfavoritepageState();
// }


// class _tarotfavoritepageState extends State<tarotfavoritepage> {
//   @override
//   void initState() {
//     // Fetch favorites from Firestore when the widget is initialized
//     Provider.of<FavoriteReadings>(context, listen: false).fetchFavoritesFromFirestore();
//     super.initState();
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF7D5AAD),
//         automaticallyImplyLeading: false,
//         title: Text(
//           "Favorite Readings",
//           style: TextStyle(
//               fontSize: 23, 
//               fontFamily: 'Pacifico',
//               color: Colors.black,
//             ),
//           ),
//         centerTitle: true,
//         actions: <Widget>[
//           IconButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => SettingScreen()),
//               );
//             },
//             icon: Icon(Icons.settings),
//             color: Colors.black,
//           )
//         ],
//       ),
        
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xFF7D5AAD), Color(0xFF303E87)],
//           ),
//         ),
//         child: Consumer<FavoriteReadings>(
//           builder: (context, favoriteReadings, child) {
//             return ListView.builder(
//               itemCount: favoriteReadings.favorites.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Adjust margin as needed
//                   padding: EdgeInsets.all(12.0), // Adjust padding as needed
//                   decoration: BoxDecoration(
//                     color: Colors.white, // White background color
//                     borderRadius: BorderRadius.circular(30.0), // Rounded corners
//                   ),
//                   child: ListTile(
//                     title: Text(
//                       favoriteReadings.favorites[index],
//                       style: TextStyle(
//                         color: Colors.black, // Text color
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             );
//           },
//         ),
//       ),
//    );
//  }
// }


