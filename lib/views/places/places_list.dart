import 'package:flutter/material.dart';
import 'package:great_places/utils/routes.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.placeForm);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
