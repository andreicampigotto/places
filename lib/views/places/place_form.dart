import 'dart:io';

import 'package:flutter/material.dart';
import 'package:great_places/views/widget/image_input.dart';

class PlaceForm extends StatefulWidget {
  const PlaceForm({super.key});

  @override
  State<PlaceForm> createState() => _PlaceFormState();
}

class _PlaceFormState extends State<PlaceForm> {
  final _titleController = TextEditingController();
  File? _pickedImage;

  void _selectImage(File pickedImage) {
    _pickedImage = pickedImage;
  }

  void _submitForm() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Place'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _titleController,
                      decoration: const InputDecoration(labelText: 'Title'),
                    ),
                    const SizedBox(height: 8),
                    ImageInput(_selectImage),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 48, right: 24, left: 24),
            child: FilledButton.icon(
              onPressed: _submitForm,
              icon: const Icon(Icons.add),
              label: const Text('Add Place'),
            ),
          ),
        ],
      ),
    );
  }
}
