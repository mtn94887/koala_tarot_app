import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GetFavoriteReading extends StatelessWidget{

  final String documentId; 
  GetFavoriteReading({required this.documentId}); 

  @override
  Widget build(BuildContext context) {

    
    String docId = FirebaseAuth.instance.currentUser?.uid??'';
    CollectionReference users = FirebaseFirestore.instance.collection('users').doc(docId).collection('favorites'); 

    return FutureBuilder <DocumentSnapshot> (
      future: users.doc(documentId).get(),
      builder: ((context,snapshot){
        if (snapshot.connectionState == ConnectionState.done){
          Map<String, dynamic> data = 
            snapshot.data!.data() as Map<String, dynamic>; 
          return Text('${data['text']}'); 
        }
        return Text('Loading...'); 
      }), 
    );
  } 
}