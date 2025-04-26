import 'package:json_annotation/json_annotation.dart';
import 'package:tekio_forms/models/tekio_field_data.dart';

part '../generated/models/tekio_form_section.g.dart';

@JsonSerializable()
class TekioFormSection {
  @JsonKey(name: 'sectionKey')
  String sectionKey;
  @JsonKey(name: 'sectionTitle')
  String? sectionTitle;
  @JsonKey(name: 'sectionSubtitle')
  String? sectionSubtitle;
  @JsonKey(name: 'order')
  int? order;
  @JsonKey(name: 'formFields')
  List<TekioFieldData>? formFields;

  TekioFormSection({
    this.order,
    this.sectionTitle,
    this.sectionSubtitle,
    required this.sectionKey,
    this.formFields,
  });

  factory TekioFormSection.fromJson(Map<String, dynamic> json) => _$TekioFormSectionFromJson(json);

  Map<String, dynamic> toJson() => _$TekioFormSectionToJson(this);
}
