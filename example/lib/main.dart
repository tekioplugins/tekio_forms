import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tekio_forms/models/tekio_form_data.dart';
import 'package:tekio_forms/widgets/tekio_form.dart';

void main() {
  runApp(FormExample());
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: Colors.blue);

  bool isEdit = true;

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
          tileColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
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
                title: TekioFormTitle(
                  title: tekioFormData.formTile,
                  subtitle: tekioFormData.formSubTitle,
                ),
                centerTitle: true,
                actions: [
                  isEdit
                      ? IconButton(
                        onPressed: () {
                          _formKey.currentState?.saveAndValidate();
                          if (kDebugMode) {
                            print(_formKey.currentState?.value);
                          }
                          setState(() {
                            isEdit = false;
                          });
                        },
                        icon: Icon(Icons.save),
                      )
                      : IconButton(
                        onPressed: () {
                          setState(() {
                            isEdit = true;
                          });
                        },
                        icon: Icon(Icons.edit),
                      ),
                ],
              ),
              body: TekioForm(
                key: _formKey,
                formData: tekioFormData,
                enabled: isEdit,
                initialValue: {
                  "field_key_01": "field_01_data",
                  "field_key_02": "field_02_data",
                  "field_key_3": "field_3_data",
                  "field_key_4": "field_4_data",
                  "field_key_6": "field_6_data",
                  "field_key_7": "field_7_data",
                  "field_key_9": "field_9_data",
                },
              ),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
