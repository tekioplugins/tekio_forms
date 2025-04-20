// This is just for testing to create documentation for the base field builder
// Can be removed later or used to continue the development of the base field builder
import 'package:flutter/material.dart';
import 'package:tekio_forms/form_fields/text_field.dart';
import 'package:tekio_forms/models/tekio_form_data.dart';
import 'package:tekio_forms/models/tekio_form_field_type.dart';

class TekioBaseFormBuilder extends StatelessWidget {
  TekioBaseFormBuilder({super.key, required this.formData});
  final TekioFormData formData;
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: List.from(
          formData.formSections.map((field) {
            // switch (field.fieldType) {
            //   case TekioFieldType.textField:
            //     return TekioTextField(formFieldsData: field);
            //   default:
            //     return const SizedBox();
            // }
          }),
        ),
      ),
    );
  }
}
