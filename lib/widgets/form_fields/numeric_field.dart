import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/utils/tekio_validators_builders.dart';

class TekioNumericField extends FormBuilderTextField {
  TekioNumericField({required TekioFieldData fieldData})
      : assert(fieldData.fieldType == TekioFieldType.numericField),
        super(
          key: Key(fieldData.fieldKey),
          name: fieldData.fieldKey,
          decoration: InputDecoration(
            labelText: fieldData.fieldLabel,
            hintText: fieldData.fieldHint,
          ),
          enabled: fieldData.enabled,
          maxLength: fieldData.maxLength,
          validator: TekioValidatorsBuilders.fieldValidators(fieldData),
          keyboardType: TextInputType.number,
          smartQuotesType: SmartQuotesType.enabled,
          smartDashesType: SmartDashesType.enabled,
        );
}
