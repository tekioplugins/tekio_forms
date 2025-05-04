import 'package:flutter/material.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/utils/tekio_form_utils.dart';

class TekioSection extends Column {
  TekioSection(
      {required TekioFormSection formSectionData,
      required BuildContext context,
      required double formSpacing})
      : super(
          key: Key(formSectionData.sectionKey),
          spacing: formSpacing,
          children: List.from(
            formSectionData.formFields
                    ?.map((e) => TekioFormUtils.buildFormType(e))
                    .toList() ??
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
