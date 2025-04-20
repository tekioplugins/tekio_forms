import 'package:json_annotation/json_annotation.dart';
import 'package:tekio_forms/models/tekio_field_data.dart';

part '../generated/models/tekio_form_sub_section.g.dart';

@JsonSerializable()
class TekioFormSubSection {
  @JsonKey(name: 'subSectionKey')
  String subSectionKey;
  @JsonKey(name: 'order')
  int? order;
  @JsonKey(name: 'formFields')
  List<TekioFieldData>? formFields;

  TekioFormSubSection({
    required this.subSectionKey,
    this.order,
    this.formFields,
  });

  factory TekioFormSubSection.fromJson(Map<String, dynamic> json) => _$TekioFormSubSectionFromJson(json);

  Map<String, dynamic> toJson() => _$TekioFormSubSectionToJson(this);
}
