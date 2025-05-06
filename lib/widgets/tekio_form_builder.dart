import 'package:flutter/material.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/utils/tekio_form_decoration.dart';
import 'package:tekio_forms/widgets/tekio_form.dart';

class TekioForm extends FormBuilder {
  TekioForm({
    super.key,
    required TekioFormData formData,
    required TekioFormDecoration formDecoration,
    super.enabled,
    super.initialValue,
  }) : super(
          child: ListView.builder(
            padding: formDecoration.formPadding,
            itemBuilder: (context, index) => Padding(
              padding: formDecoration.sectionPadding,
              child: TekioSection(
                formSectionData: formData.formSections[index],
                formSpacing: formDecoration.formsSpacing,
                context: context,
              ),
            ),
            itemCount: formData.formSections.length,
          ),
        );
}
