import 'package:flutter/material.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/utils/tekio_form_decoration.dart';

class TekioSection extends Column {
  TekioSection({
    required TekioFormSection formSectionData,
    required BuildContext context,
    required TekioFormDecoration formDecoration,
  }) : super(
          key: Key(formSectionData.sectionKey),
          spacing: formSpacing,
          children: List.from(
            formSectionData.formFields?.map((e) => e.fieldType?.buildField(e)).toList() ?? [],
          )..insertAll(
              0,
              (formSectionData.sectionTitle != null || formSectionData.sectionSubtitle != null)
                  ? [
                      //TODO: ListTile might not be the best thing to use in this case, because the user might want to use it in another part of the app and the appTheme will break.
                      ListTile(
                        title: Text(
                          formSectionData.sectionTitle ?? '',
                          textAlign: formDecoration.tekioAlignment.textAlign,
                        ),
                        subtitle: Text(
                          formSectionData.sectionSubtitle ?? '',
                          textAlign: formDecoration.tekioAlignment.textAlign,
                        ),
                      ),
                    ]
                  : [],
            ),
        );
}
