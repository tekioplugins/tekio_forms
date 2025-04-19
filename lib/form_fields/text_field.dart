// This is just for testing to create documentation for the text field
// Can be removed later or used to continue the development of the text field

import 'package:flutter/material.dart';
import 'package:tekio_forms/models/form_fields_data.dart';

class TekioTextField extends TextFormField {
  final FormFieldsData formFieldsData;

  TekioTextField({super.key, required this.formFieldsData});

  Widget build(BuildContext context) {
    return TextFormField(
      key: Key(formFieldsData.fieldKey),
      decoration: InputDecoration(
        labelText: formFieldsData.fieldLabel,
        hintText: formFieldsData.fieldHint,
      ),
      maxLines: formFieldsData.maxLines,
      minLines: formFieldsData.minLines,
      maxLength: formFieldsData.maxLength,
    );
  }
}
