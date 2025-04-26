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

  int indexToLoad = 0; //TODO:THIS IS STUPID ONELY HERE FOR POC REASONS

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.formData.formTile ?? ''),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    //TODO:THIS IS STUPID ONELY HERE FOR POC REASONS
                    if (indexToLoad > 0) {
                      setState(() {
                        indexToLoad--;
                      });
                    }
                  },
                  icon: Icon(Icons.arrow_back_rounded)),
              Expanded(
                  child: Text(
                widget.formData.formSections[indexToLoad].sectionTitle ?? '',
                textAlign: TextAlign.center,
              )),
              IconButton(
                onPressed: () {
                  //TODO:THIS IS STUPID ONELY HERE FOR POC REASONS
                  if (indexToLoad < widget.formData.formSections.length - 1) {
                    setState(() {
                      indexToLoad++;
                    });
                  }
                },
                icon: Icon(Icons.arrow_forward_rounded),
              )
            ],
          ),
        ),
      ),
      body: FormBuilder(
        key: _formKey,
        child: TekioSection(
          formSectionData: widget.formData.formSections[indexToLoad],
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: //TODO:THIS IS STUPID ONELY HERE FOR POC REASONS
            indexToLoad == widget.formData.formSections.length - 1
                ? FilledButton(
                    onPressed: () {
                      _formKey.currentState?.saveAndValidate();
                      debugPrint(_formKey.currentState?.value.toString());
                    },
                    child: Text('YES DO THE THING'),
                  )
                : FilledButton(
                    onPressed: () {
                      setState(() {
                        indexToLoad++;
                      });
                      ;
                    },
                    child: Text('DAS BUTTON'),
                  ),
      ),
    );
  }
}
