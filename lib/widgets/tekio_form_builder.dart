import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/models/tekio_form_decoration.dart';
import 'package:tekio_forms/widgets/tekio_form.dart';

class TekioForm extends StatelessWidget {
  TekioForm({
    super.key,
    required this.formData,
    required this.formDecoration,
    required this.onSubmit,
    this.initialValue,
  });

  final TekioFormData formData;
  final TekioFormDecoration formDecoration;
  final Function(Map<String, dynamic>?) onSubmit;
  final Map<String, dynamic>? initialValue;

  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key(formData.formKey),
      appBar: AppBar(
        title: Column(
          children: [
            if (formData.formTile != null && formData.formTile!.isNotEmpty)
              Text(
                formData.formTile ?? '',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            if (formData.formSubTitle != null &&
                formData.formSubTitle!.isNotEmpty)
              Text(
                formData.formSubTitle ?? '',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
          ],
        ),
        centerTitle: true,
      ),
      body: FormBuilder(
          key: _formKey,
          initialValue: initialValue ?? {},
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
          )),
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: formDecoration.buttonPadding,
        child: FilledButton(
          onPressed: () {
            _formKey.currentState?.saveAndValidate();
            onSubmit(_formKey.currentState?.value);
          },
          child: Text('Submit'),
        ),
      ),
    );
  }
}
