import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tekio_forms/models/tekio_form_data.dart';
import 'package:tekio_forms/widgets/tekio_form_builder.dart';

Future<void> main() async {
  runApp(FormExample());
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder<String>(
        future: rootBundle.loadString('lib/example.json'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('No data found'));
          }
          return TekioForm(
            formData: TekioFormData.fromJson(jsonDecode(snapshot.data!)),
          );
        },
      ),
    );
  }
}
