import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tekio_forms/models/tekio_form_data.dart';
import 'package:tekio_forms/models/tekio_form_decoration.dart';
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
  final ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: Colors.green);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: colorScheme,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
        listTileTheme: ListTileThemeData(
          tileColor: colorScheme.tertiary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
          ),
        ),
      ),
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
            formDecoration: TekioFormDecoration(
              formPadding: EdgeInsets.symmetric(horizontal: 12.0),
              sectionPadding: const EdgeInsets.only(bottom: 12.0),
              formsSpacing: 10.0,
              buttonPadding: EdgeInsets.all(20.0),
            ),
            onSubmit: (p0) => print(p0),
            initialValue: {
              "FIELD01": "Test",
              "FIELD9": "Test",
              "FIELD10": "Test",
              "FIELD11": "Test",
            },
          );
        },
      ),
    );
  }
}
