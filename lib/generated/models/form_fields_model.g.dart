// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/form_fields_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormFieldsModel _$FormFieldsModelFromJson(Map<String, dynamic> json) =>
    FormFieldsModel(
      fieldKey: json['fieldKey'] as String,
      fieldType: $enumDecodeNullable(
        _$TekioFieldEnumEnumMap,
        json['fieldType'],
      ),
      fieldLabel: json['fieldLabel'] as String?,
      fieldHint: json['fieldHint'] as String?,
      maxLines: (json['maxLines'] as num?)?.toInt(),
      minLines: (json['minLines'] as num?)?.toInt(),
      maxLength: (json['maxLength'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FormFieldsModelToJson(FormFieldsModel instance) =>
    <String, dynamic>{
      'fieldKey': instance.fieldKey,
      'fieldType': _$TekioFieldEnumEnumMap[instance.fieldType],
      'fieldLabel': instance.fieldLabel,
      'fieldHint': instance.fieldHint,
      'maxLines': instance.maxLines,
      'minLines': instance.minLines,
      'maxLength': instance.maxLength,
    };

const _$TekioFieldEnumEnumMap = {TekioFieldEnum.textField: 'textField'};
