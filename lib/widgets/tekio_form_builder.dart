import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/widgets/tekio_form.dart';

class TekioForm extends StatelessWidget {
  TekioForm({super.key, required this.formData});
  final TekioFormData formData;

  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(formData.formTile ?? ''),
            Text(formData.formSubTitle ?? ''),
          ],
        ),
        centerTitle: true,
      ),
      body: FormBuilder(
          key: _formKey,
          child: ListView.builder(
            itemBuilder: (context, index) => TekioSection(
              formSectionData: formData.formSections[index],
            ),
            itemCount: formData.formSections.length,
          )),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: () {},
          child: Text('DAS BUTTON'),
        ),
      ),
    );
  }
}
