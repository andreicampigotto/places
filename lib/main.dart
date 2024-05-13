import 'package:flutter/material.dart';
import 'package:great_places/utils/routes.dart';
import 'package:great_places/views/places/place_form.dart';
import 'package:great_places/views/places/places_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PlacesList(),
      routes: {Routes.placeForm: (context) => const PlaceForm()},
    );
  }
}
