import 'package:flutter/material.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/widgets/tekio_form.dart';

class TekioSection extends ListView {
  TekioSection({required TekioFormSection formSectionData})
      : super(
          key: Key(formSectionData.sectionKey),
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
