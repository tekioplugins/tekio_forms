import 'package:tekio_forms/models/form_fields_model.dart';

class FormBaseModel {
  String formKey;
  List<FormFieldsModel> formFields;

  FormBaseModel({required this.formKey, required this.formFields});

  factory FormBaseModel.fromJson(Map<String, dynamic> json) {
    return FormBaseModel(
      formKey: json['formKey'],
      formFields: List<FormFieldsModel>.from(
        json["formFields"].map((x) => FormFieldsModel.fromJson(x)),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'formKey': formKey,
      'formFields': List<dynamic>.from(formFields.map((x) => x.toJson())),
    };
  }
}
