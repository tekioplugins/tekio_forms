// This is just for testing to create documentation for the text field
// Can be removed later or used to continue the development of the text field

import 'package:flutter/material.dart';
import 'package:tekio_forms/models/form_fields_model.dart';

class TekioTextField extends StatelessWidget {
  final FormFieldsModel fieldDataModel;

  const TekioTextField({super.key, required this.fieldDataModel});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key(fieldDataModel.fieldKey),
      decoration: InputDecoration(
        labelText: fieldDataModel.fieldLabel,
        hintText: fieldDataModel.fieldHint,
      ),
    );
  }
}
