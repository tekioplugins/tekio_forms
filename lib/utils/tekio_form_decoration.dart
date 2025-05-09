import 'package:flutter/material.dart';

class TekioFormDecoration {
  /// Padding for the base form
  final EdgeInsetsGeometry formPadding;

  /// Padding for the sections
  final EdgeInsetsGeometry sectionPadding;

  /// Spacing between the form fields
  final double formsSpacing;

  const TekioFormDecoration({
    this.formPadding = const EdgeInsets.symmetric(horizontal: 12.0),
    this.sectionPadding = const EdgeInsets.only(bottom: 12.0),
    this.formsSpacing = 10.0,
  });
}
