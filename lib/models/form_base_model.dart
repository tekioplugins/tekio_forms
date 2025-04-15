import 'package:tekio_forms/models/form_fields_model.dart';
import 'package:json_annotation/json_annotation.dart';

part '../generated/models/form_base_model.g.dart';

@JsonSerializable()
class FormBaseModel {
  @JsonKey(name: 'form_key')
  String formKey;
  @JsonKey(name: 'form_fields')
  List<FormFieldsModel> formFields;

  FormBaseModel({required this.formKey, required this.formFields});

  factory FormBaseModel.fromJson(Map<String, dynamic> json) =>
      _$FormBaseModelFromJson(json);

  Map<String, dynamic> toJson() => _$FormBaseModelToJson(this);
}
