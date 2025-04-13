import 'package:collection/collection.dart';

enum TekioFieldEnum {
  textField("textField");

  const TekioFieldEnum(this.code);

  final String code;

  static TekioFieldEnum? fromJson(String? string) =>
      TekioFieldEnum.values.firstWhereOrNull((e) => e.code == string);

  static String? toJson(TekioFieldEnum? tekioFieldTypeEnum) =>
      tekioFieldTypeEnum?.code;
}
