import 'package:flutter/material.dart';
import 'package:tekio_forms/models/tekio_field_data.dart';
import 'package:tekio_forms/models/tekio_form_field_type.dart';
import 'package:tekio_forms/widgets/form_fields/text_field.dart';

class TekioFormUtils {
  static Widget buildFormType(TekioFieldData fieldData) {
    switch (fieldData.fieldType) {
      case TekioFieldType.textField:
        return TekioTextField(
          formFieldsData: fieldData,
        );
      default:
        return SizedBox();
    }
  }
}
