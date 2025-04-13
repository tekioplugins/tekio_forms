import 'package:tekio_forms/models/form_fields_model.dart';

class FormBaseModel {
  String formKey;
  List<FormFieldsModel> formFields;

  FormBaseModel({required this.formKey, required this.formFields});
}
