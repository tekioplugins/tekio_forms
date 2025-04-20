// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/tekio_form_sub_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TekioFormSubSection _$TekioFormSubSectionFromJson(Map<String, dynamic> json) => TekioFormSubSection(
      subSectionKey: json['subSectionKey'] as String,
      order: (json['order'] as num?)?.toInt(),
      formFields: (json['formFields'] as List<dynamic>?)
          ?.map((e) => TekioFieldData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TekioFormSubSectionToJson(TekioFormSubSection instance) => <String, dynamic>{
      'subSectionKey': instance.subSectionKey,
      'order': instance.order,
      'formFields': instance.formFields,
    };
