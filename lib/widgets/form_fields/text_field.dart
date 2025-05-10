import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
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
          enabled: formFieldsData.enabled,
          maxLines: formFieldsData.maxLines,
          maxLength: formFieldsData.maxLength,
          validator: FormBuilderValidators.compose([
            if (formFieldsData.isMandatory) FormBuilderValidators.required(),
            if (formFieldsData.minLength != null)
              FormBuilderValidators.minLength(formFieldsData.minLength!),
            if (formFieldsData.regexValidation != null)
              FormBuilderValidators.match(
                  RegExp(formFieldsData.regexValidation ?? '')),
          ]),
        );
}
