import 'dart:convert';

import 'package:example/example_data.dart';
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
      home: FutureBuilder<ExampleData>(
        future: Future(
          () async => ExampleData(
            exampleForm: await rootBundle.loadString('lib/exampleForm.json'),
            exampleInitial: await rootBundle.loadString(
              'lib/exampleInitial.json',
            ),
          ),
        ),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            TekioFormData tekioFormData = TekioFormData.fromJson(
              jsonDecode(snapshot.data!.exampleForm),
            );
            Map<String, dynamic> initialValue = jsonDecode(
              snapshot.data!.exampleInitial,
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
                initialValue: initialValue,
              ),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
