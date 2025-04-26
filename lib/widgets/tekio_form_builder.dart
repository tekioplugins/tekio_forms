import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/widgets/tekio_section.dart';

class TekioForm extends StatelessWidget {
  TekioForm({super.key, required this.formData});
  final TekioFormData formData;
  final GlobalKey _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(formData.formTile ?? ''),
        centerTitle: true,
      ),
      body: FormBuilder(
        key: _formKey,
        child: TekioSection(
          formSectionData: formData.formSections.first,
        ),
      ),
      bottomSheet: FilledButton(
        onPressed: () {},
        child: Text('DAT BUTTON'),
      ),
    );
  }
}




   //  TekioSection(

      //   formSectionData:
      // ),

      // List.generate(
      //   formData.formSections.length,
      //   (index) => formData.formSections.firstWhere(
      //     (element) => element.order == index,
      //   ),
      //   growable: false,
      // ),
      // initialValue: , // NOTE:This will be useful later to use initial values by field.