
// import 'package:flutter/foundation.dart';

//  class FavoriteReadings extends ChangeNotifier {
//    List<String> _favorites = [];

//    List<String> get favorites => _favorites;

//    void addToFavorites(String reading) {
//      _favorites.add(reading);
//      notifyListeners();
//    }
//  }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FavoriteReadings extends ChangeNotifier {
  List<String> _favorites = [];

  List<String> get favorites => _favorites;

  void addToFavorites(String reading) async {
    _favorites.add(reading);
    notifyListeners();
    await _addFavoriteToFirestore(reading); // Call the static method
  }

  // Function to retrieve favorites from Firestore
  Future<void> fetchFavoritesFromFirestore() async {
    try {
      final favoritesSnapshot =
          await FirebaseFirestore.instance.collection('users').get();
      _favorites.clear();
      for (var doc in favoritesSnapshot.docs) {
        _favorites.add(doc['text']);
      }
      notifyListeners();
    } catch (e) {
      print('Error fetching favorites: $e');
    }
  }

  // Static method to add a favorite to Firestore
  static Future<void> _addFavoriteToFirestore(String text) async {
    try {
      String documentId = FirebaseAuth.instance.currentUser?.uid??'';
      await FirebaseFirestore.instance.collection('users').doc(documentId).collection('favorites').add({
        'text': text,
      });
    } catch (e) {
      print('Error adding favorite: $e');
    }
  }
}
