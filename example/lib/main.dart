import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tekio_forms/models/tekio_form_data.dart';
import 'package:tekio_forms/widgets/tekio_form_builder.dart';

Future<void> main() async {
  final String jsonExample = await rootBundle.loadString('lib/example.json');
  runApp(
    FormExample(formData: TekioFormData.fromJson(jsonDecode(jsonExample))),
  );
}

class FormExample extends StatelessWidget {
  final TekioFormData formData;
  const FormExample({super.key, required this.formData});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: TekioForm(formData: formData)));
  }
}
