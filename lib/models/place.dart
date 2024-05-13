import 'dart:io';

class Location {
  double latitude, longitude;
  String? address;

  Location({
    required this.latitude,
    required this.longitude,
    this.address,
  });
}

class Place {
  String id, place, title;
  Location location;
  File image;

  Place({
    required this.id,
    required this.place,
    required this.title,
    required this.location,
    required this.image,
  });
}
