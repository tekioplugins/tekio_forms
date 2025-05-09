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
                      //TODO: ListTile might not be the best thing to use in this case, because the user might want to use it in another part of the app and the appTheme will break.
                      ListTile(
                        title: Text(
                          formSectionData.sectionTitle ?? '',
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          formSectionData.sectionSubtitle ?? '',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                  : [],
            ),
        );
}
