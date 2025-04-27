import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/widgets/tekio_form.dart';

class TekioSection extends Column {
  TekioSection({required TekioFormSection formSectionData})
      : super(
          key: Key(formSectionData.sectionKey),
          children: formSectionData.formFields
                  ?.sorted((a, b) => (a.order ?? 0).compareTo((b.order ?? 0)))
                  .map((e) {
                switch (e.fieldType) {
                  case TekioFieldType.textField:
                    return TekioTextField(
                      formFieldsData: e,
                    );
                  default:
                    return SizedBox();
                }
              }).toList() ??
              [],
        );
}
