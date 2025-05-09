// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/tekio_form_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TekioFormSection _$TekioFormSectionFromJson(Map<String, dynamic> json) =>
    TekioFormSection(
      order: (json['order'] as num?)?.toInt(),
      sectionTitle: json['sectionTitle'] as String?,
      sectionSubtitle: json['sectionSubtitle'] as String?,
      sectionKey: json['sectionKey'] as String,
      formFields: (json['formFields'] as List<dynamic>?)
          ?.map((e) => TekioFieldData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TekioFormSectionToJson(TekioFormSection instance) =>
    <String, dynamic>{
      'sectionKey': instance.sectionKey,
      'sectionTitle': instance.sectionTitle,
      'sectionSubtitle': instance.sectionSubtitle,
      'order': instance.order,
      'formFields': instance.formFields,
    };
