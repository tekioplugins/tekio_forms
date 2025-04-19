import 'package:tekio_forms/models/form_fields_data.dart';
import 'package:json_annotation/json_annotation.dart';

part '../generated/models/form_base_data.g.dart';

@JsonSerializable()
class FormBaseData {
  @JsonKey(name: 'formKey')
  String formKey;
  @JsonKey(name: 'formFields')
  List<FormFieldsData> formFields;

  FormBaseData({required this.formKey, required this.formFields});

  factory FormBaseData.fromJson(Map<String, dynamic> json) =>
      _$FormBaseDataFromJson(json);

  Map<String, dynamic> toJson() => _$FormBaseDataToJson(this);
}
