// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/tekio_form_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TekioFormData _$TekioFormDataFromJson(Map<String, dynamic> json) => TekioFormData(
      formTile: json['formTile'] as String?,
      formSubTitle: json['formSubTitle'] as String?,
      formKey: json['formKey'] as String,
      formSections: (json['formSections'] as List<dynamic>)
          .map((e) => TekioFormSection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TekioFormDataToJson(TekioFormData instance) => <String, dynamic>{
      'formKey': instance.formKey,
      'formTile': instance.formTile,
      'formSubTitle': instance.formSubTitle,
      'formSections': instance.formSections,
    };
