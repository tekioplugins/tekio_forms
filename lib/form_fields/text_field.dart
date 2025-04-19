// This is just for testing to create documentation for the text field
// Can be removed later or used to continue the development of the text field

import 'package:flutter/material.dart';
import 'package:tekio_forms/models/form_fields_data.dart';

class TekioTextField extends TextFormField {
  final FormFieldsModel fieldDataModel;

  TekioTextField({super.key, required this.fieldDataModel});

  Widget build(BuildContext context) {
    return TextFormField(
      key: Key(fieldDataModel.fieldKey),
      decoration: InputDecoration(
        labelText: fieldDataModel.fieldLabel,
        hintText: fieldDataModel.fieldHint,
      ),
      maxLines: fieldDataModel.maxLines,
      minLines: fieldDataModel.minLines,
      maxLength: fieldDataModel.maxLength,
    );
  }
}
