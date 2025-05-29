import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tekio_forms/models/tekio_field_data.dart';
import 'package:tekio_forms/models/tekio_form_field_type.dart';

class TekioDateField extends FormBuilderDateTimePicker {
  TekioDateField({required TekioFieldData formFieldsData})
      : assert(formFieldsData.fieldType == TekioFieldType.dateField),
        super(
            key: Key(formFieldsData.fieldKey),
            name: formFieldsData.fieldKey,
            decoration: InputDecoration(
              labelText: formFieldsData.fieldLabel,
              hintText: formFieldsData.fieldHint,
            ),
            inputType: InputType.both);
}
