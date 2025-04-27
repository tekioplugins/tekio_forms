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
          children: List.from([
            if (formSectionData.sectionTitle != null &&
                formSectionData.sectionTitle!.isNotEmpty)
              Text(
                formSectionData.sectionTitle ?? '',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            if (formSectionData.sectionSubtitle != null &&
                formSectionData.sectionSubtitle!.isNotEmpty)
              Text(
                formSectionData.sectionSubtitle ?? '',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              ),
          ])
            ..addAll(
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
            ),
        );
}
