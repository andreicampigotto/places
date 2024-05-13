import 'package:flutter/material.dart';
import 'package:great_places/models/place.dart';

class GreatPlaces with ChangeNotifier {
  final List<Place> _places = [];

  List<Place> get places => [..._places];

  int get placesCount {
    return _places.length;
  }

  Place placeById(int index) => _places[index];

  void addPlace(Place place) {
    _places.add(place);
    notifyListeners();
  }
}
