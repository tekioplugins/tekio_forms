import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:json_annotation/json_annotation.dart';

enum DateTimeType {
  @JsonValue("date")
  date(InputType.date),
  @JsonValue("time")
  time(InputType.time),
  @JsonValue("both")
  both(InputType.both);

  final InputType timeType;

  const DateTimeType(this.timeType);
}
