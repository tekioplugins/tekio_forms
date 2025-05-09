import 'package:flutter/material.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/utils/tekio_form_decoration.dart';
import 'package:tekio_forms/widgets/tekio_form.dart';

class TekioForm extends FormBuilder {
  ///Form Data
  final TekioFormData formData;

  /// Optional form decoration
  final TekioFormDecoration formDecoration;

  /// Is form edit enabled or disabled
  @override
  final bool enabled;

  /// Map of initial values with key values corresponding to the form data.
  @override
  final Map<String, dynamic> initialValue;

  TekioForm({
    super.key,
    required this.formData,
    this.formDecoration = const TekioFormDecoration(),
    this.enabled = true,
    this.initialValue = const <String, dynamic>{},
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
          enabled: enabled,
          initialValue: initialValue,
        );
}
