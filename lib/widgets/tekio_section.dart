import 'package:flutter/material.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/widgets/tekio_form.dart';

class TekioSection extends Column {
  TekioSection({
    required TekioFormSection formSectionData,
    required BuildContext context,
  }) : super(
          key: Key(formSectionData.sectionKey),
          spacing: 10.0,
          children: List.from(
            formSectionData.formFields?.map((e) {
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
          )..insertAll(
              0,
              (formSectionData.sectionTitle != null ||
                      formSectionData.sectionSubtitle != null)
                  ? [
                      ListTile(
                        title: (formSectionData.sectionTitle != null)
                            ? Text(
                                formSectionData.sectionTitle ?? '',
                                textAlign: TextAlign.center,
                              )
                            : Text(
                                formSectionData.sectionSubtitle ?? '',
                                textAlign: TextAlign.center,
                              ),
                        subtitle: (formSectionData.sectionSubtitle != null)
                            ? !(formSectionData.sectionTitle == null)
                                ? Text(
                                    formSectionData.sectionSubtitle ?? '',
                                    textAlign: TextAlign.center,
                                  )
                                : null
                            : null,
                      ),
                    ]
                  : [],
            ),
        );
}
