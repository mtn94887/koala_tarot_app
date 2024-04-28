import 'dart:ffi';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FavoriteReadings extends ChangeNotifier {
  List<String> _favorites = [];

  List<String> get favorites => _favorites;

  void addToFavorites(String reading) async {
    _favorites.add(reading);
    notifyListeners();
    await _addFavoriteToFirestore(reading);  
  }

  void removeFromFavorites(String reading) async {
    _favorites.remove(reading);
    notifyListeners();
    await _removeFavoriteFromFirestore(reading);  
  }

  static Future<void> _addFavoriteToFirestore(String text) async {
    try {
      String documentId = FirebaseAuth.instance.currentUser?.uid ?? '';
      await FirebaseFirestore.instance
          .collection('users')
          .doc(documentId)
          .collection('favorites')
          .add({
        'text': text,
      });
    } catch (e) {
      print('Error adding favorite: $e');
    }
  }

  static Future<void> _removeFavoriteFromFirestore(String text) async {
    try {
      String documentId = FirebaseAuth.instance.currentUser?.uid ?? '';
      QuerySnapshot favoritesSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(documentId)
          .collection('favorites')
          .where('text', isEqualTo: text)
          .get();
      for (QueryDocumentSnapshot doc in favoritesSnapshot.docs) {
        await doc.reference.delete();
      }
    } catch (e) {
      print('Error removing favorite: $e');
    }
  }
}
