import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tekio_forms/models/tekio_form_data.dart';
import 'package:tekio_forms/utils/tekio_form_decoration.dart';
import 'package:tekio_forms/widgets/tekio_form.dart';

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

  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

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
          if (snapshot.hasData) {
            final TekioFormData tekioFormData = TekioFormData.fromJson(
              jsonDecode(snapshot.data!),
            );
            return Scaffold(
              appBar: AppBar(
                title: TekioFormTitle(formData: tekioFormData),
                centerTitle: true,
              ),
              body: TekioForm(
                key: _formKey,
                formData: tekioFormData,
                formDecoration: TekioFormDecoration(
                  formPadding: EdgeInsets.symmetric(horizontal: 12.0),
                  sectionPadding: const EdgeInsets.only(bottom: 12.0),
                  formsSpacing: 10.0,
                ),
                initialValue: {
                  "FIELD01": "Test",
                  "FIELD9": "Test",
                  "FIELD10": "Test",
                  "FIELD11": "Test",
                },
              ),
              bottomNavigationBar: Container(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    _formKey.currentState?.saveAndValidate();
                    print(_formKey.currentState?.value);
                  },
                  child: Text('Submit'),
                ),
              ),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
