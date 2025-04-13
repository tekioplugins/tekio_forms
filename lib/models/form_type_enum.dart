import 'package:collection/collection.dart';

enum TekioFieldTypeEnum {
  textField("textField");

  const TekioFieldTypeEnum(this.code);

  final String code;

  static TekioFieldTypeEnum? fromString(String? string) =>
      TekioFieldTypeEnum.values.firstWhereOrNull((e) => e.code == string);

  static String? getString(TekioFieldTypeEnum? tekioFieldTypeEnum) =>
      tekioFieldTypeEnum?.code;
}
