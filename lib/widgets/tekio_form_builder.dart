import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/widgets/tekio_form.dart';

class TekioForm extends StatelessWidget {
  TekioForm({super.key, required this.formData, required this.onSubmit});
  final TekioFormData formData;
  final Function(Map<String, dynamic>?) onSubmit;

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
          child: ListView.builder(
            padding: EdgeInsets.all(10.0),
            itemBuilder: (context, index) => TekioSection(
              formSectionData: formData.formSections[index],
              context: context,
            ),
            itemCount: formData.formSections.length,
          )),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
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
