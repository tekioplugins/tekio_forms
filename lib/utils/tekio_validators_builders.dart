import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:tekio_forms/models/models.dart';

class TekioValidatorsBuilders {
  static fieldValidators(TekioFieldData data) {
    return FormBuilderValidators.compose([
      if (data.isMandatory) FormBuilderValidators.required(),
      if (data.minLength != null) FormBuilderValidators.minLength(data.minLength!),
      if (data.maxLength != null) FormBuilderValidators.maxLength(data.maxLength!),
      if (data.regexValidation != null) FormBuilderValidators.match(RegExp(data.regexValidation ?? '')),
      if (data.fieldType == TekioFieldType.numericField && data.minValue != null)
        FormBuilderValidators.min(data.minValue as num),
      if (data.fieldType == TekioFieldType.numericField && data.maxValue != null)
        FormBuilderValidators.max(data.maxValue as num),
    ]);
  }
}
