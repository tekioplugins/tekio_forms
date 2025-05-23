import 'package:flutter/material.dart';
import 'package:tekio_forms/models/tekio_field_data.dart';
import 'package:tekio_forms/widgets/form_fields/numeric_field.dart';
import 'package:tekio_forms/widgets/form_fields/text_field.dart';

Widget buildTextField(TekioFieldData data) {
  return TekioTextField(
    formFieldsData: data,
  );
}

Widget buildNumericField(TekioFieldData data) {
  return TekioNumericField(
    fieldData: data,
  );
}

Widget buildUnknown(TekioFieldData data) {
  return const SizedBox.shrink();
}
