// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/tekio_field_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TekioFieldData _$TekioFieldDataFromJson(Map<String, dynamic> json) => TekioFieldData(
      fieldKey: json['fieldKey'] as String,
      groupingKey: json['groupingKey'] as String?,
      fieldType:
          $enumDecodeNullable(_$TekioFieldTypeEnumMap, json['fieldType'], unknownValue: TekioFieldType.unknown) ??
              TekioFieldType.unknown,
      fieldLabel: json['fieldLabel'] as String?,
      fieldHint: json['fieldHint'] as String?,
      maxLines: (json['maxLines'] as num?)?.toInt() ?? 1,
      minLength: (json['minLength'] as num?)?.toInt(),
      maxLength: (json['maxLength'] as num?)?.toInt(),
      isMandatory: json['isMandatory'] as bool? ?? false,
      order: (json['order'] as num?)?.toInt(),
      regexValidation: json['regexValidation'] as String?,
      maxValue: (json['maxValue'] as num?)?.toInt(),
      minValue: (json['minValue'] as num?)?.toInt(),
      enabled: json['enabled'] as bool? ?? true,
    );

Map<String, dynamic> _$TekioFieldDataToJson(TekioFieldData instance) => <String, dynamic>{
      'order': instance.order,
      'groupingKey': instance.groupingKey,
      'fieldKey': instance.fieldKey,
      'fieldType': _$TekioFieldTypeEnumMap[instance.fieldType],
      'fieldLabel': instance.fieldLabel,
      'fieldHint': instance.fieldHint,
      'maxLines': instance.maxLines,
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
      'isMandatory': instance.isMandatory,
      'enabled': instance.enabled,
      'regexValidation': instance.regexValidation,
    };

const _$TekioFieldTypeEnumMap = {
  TekioFieldType.textField: 'textField',
  TekioFieldType.numericField: 'numericField',
  TekioFieldType.unknown: 'unknown',
};
