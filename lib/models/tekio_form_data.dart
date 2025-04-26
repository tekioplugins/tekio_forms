import 'package:json_annotation/json_annotation.dart';
import 'package:tekio_forms/models/tekio_form_section.dart';

part '../generated/models/tekio_form_data.g.dart';

@JsonSerializable()
class TekioFormData {
  @JsonKey(name: 'formKey')
  String formKey;
  @JsonKey(name: 'formTile')
  String? formTile;
  @JsonKey(name: 'formSubTitle')
  String? formSubTitle;
  @JsonKey(name: 'formSections')
  List<TekioFormSection> formSections;

  TekioFormData({
    this.formTile,
    this.formSubTitle,
    required this.formKey,
    required this.formSections,
  });

  factory TekioFormData.fromJson(Map<String, dynamic> json) => _$TekioFormDataFromJson(json);

  Map<String, dynamic> toJson() => _$TekioFormDataToJson(this);
}
