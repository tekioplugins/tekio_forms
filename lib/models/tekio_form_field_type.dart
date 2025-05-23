import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tekio_forms/models/tekio_field_data.dart';
import 'package:tekio_forms/utils/tekio_fields_builders.dart';

enum TekioFieldType {
  @JsonValue("textField")
  textField(buildTextField),
  @JsonValue("numericField")
  numericField(buildNumericField),
  unknown(buildUnknown);

  final Widget Function(TekioFieldData) builder;

  const TekioFieldType(this.builder);

  Widget buildField(TekioFieldData formData) => builder(formData);
}
