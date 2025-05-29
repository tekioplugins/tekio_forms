import 'package:flutter/material.dart';
import 'package:tekio_forms/models/tekio_field_data.dart';
import 'package:tekio_forms/widgets/tekio_form.dart';

Widget buildTextField(TekioFieldData data) {
  return TekioTextField(
    formFieldsData: data,
  );
}

Widget buildDateField(TekioFieldData data) {
  return TekioDateField(
    formFieldsData: data,
  );
}

Widget buildUnknown(TekioFieldData data) {
  return const SizedBox.shrink();
}
