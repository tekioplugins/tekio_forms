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
        title: Text(formData.formTile ?? ''),
        centerTitle: true,
        // bottom: PreferredSize(
        //   preferredSize: Size.fromHeight(50.0),
        //   child: Row(
        //     children: [
        //       IconButton(
        //           onPressed: () {}, icon: Icon(Icons.arrow_back_rounded)),
        //       Expanded(
        //           child: Text(
        //         "TEXT DAwdwTA",
        //         textAlign: TextAlign.center,
        //       )),
        //       IconButton(
        //           onPressed: () {}, icon: Icon(Icons.arrow_forward_rounded))
        //     ],
        //   ),
        // ),
      ),
      body: FormBuilder(
        key: _formKey,
        child: TekioSection(
          formSectionData: formData.formSections.first,
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: () {
            _formKey.currentState?.saveAndValidate();
            debugPrint(_formKey.currentState?.value.toString());
          },
          child: Text('DAT BUTTON'),
        ),
      ),
    );
  }
}
