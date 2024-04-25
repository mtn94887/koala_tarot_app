import 'package:flutter/foundation.dart';

class FavoriteReadings extends ChangeNotifier {
  List<String> _favorites = [];

  List<String> get favorites => _favorites;

  void addToFavorites(String reading) {
    _favorites.add(reading);
    notifyListeners();
  }
}
