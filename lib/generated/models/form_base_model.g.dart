// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/form_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormBaseModel _$FormBaseModelFromJson(Map<String, dynamic> json) =>
    FormBaseModel(
      formKey: json['form_key'] as String,
      formFields:
          (json['form_fields'] as List<dynamic>)
              .map((e) => FormFieldsModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$FormBaseModelToJson(FormBaseModel instance) =>
    <String, dynamic>{
      'form_key': instance.formKey,
      'form_fields': instance.formFields,
    };
