import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/widgets/tekio_form.dart';

class TekioForm extends StatefulWidget {
  const TekioForm({super.key, required this.formData});
  final TekioFormData formData;

  @override
  State<TekioForm> createState() => _TekioFormState();
}

class _TekioFormState extends State<TekioForm> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    widget.formData.formSections
        .sort((a, b) => (a.order ?? 0).compareTo((b.order ?? 0)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key(widget.formData.formKey),
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              widget.formData.formTile ?? '',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              widget.formData.formSubTitle ?? '',
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
              formSectionData: widget.formData.formSections[index],
              context: context,
            ),
            itemCount: widget.formData.formSections.length,
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
