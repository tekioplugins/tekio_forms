// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/form_base_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormBaseData _$FormBaseDataFromJson(Map<String, dynamic> json) => FormBaseData(
      formKey: json['formKey'] as String,
      formFields: (json['formFields'] as List<dynamic>)
          .map((e) => FormFieldsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FormBaseDataToJson(FormBaseData instance) =>
    <String, dynamic>{
      'formKey': instance.formKey,
      'formFields': instance.formFields,
    };
