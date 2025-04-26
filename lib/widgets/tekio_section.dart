import 'package:flutter/material.dart';
import 'package:tekio_forms/models/tekio_form_field_type.dart';
import 'package:tekio_forms/models/tekio_form_section.dart';
import 'package:tekio_forms/widgets/form_fields/text_field.dart';

class TekioSection extends ListView {
  TekioSection({super.key, required TekioFormSection formSectionData})
      : super(
          scrollDirection: Axis.vertical,
          children: formSectionData.formFields!.map(
            (e) {
              switch (e.fieldType) {
                case TekioFieldType.textField:
                  return TekioTextField(
                    formFieldsData: e,
                  );
                default:
                  return SizedBox();
              }
            },
          ).toList(),
        );
}
