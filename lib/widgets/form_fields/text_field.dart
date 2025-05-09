// This is just for testing to create documentation for the text field
// Can be removed later or used to continue the development of the text field

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tekio_forms/models/models.dart';

class TekioTextField extends FormBuilderTextField {
  TekioTextField({required TekioFieldData formFieldsData})
      : assert(formFieldsData.fieldType == TekioFieldType.textField),
        super(
          key: Key(formFieldsData.fieldKey),
          name: formFieldsData.fieldKey,
          decoration: InputDecoration(
            labelText: formFieldsData.fieldLabel,
            hintText: formFieldsData.fieldHint,
          ),
          maxLines: formFieldsData.maxLines,
          // minLines: formFieldsData.minLines,
          maxLength: formFieldsData.maxLength,
        );
}
