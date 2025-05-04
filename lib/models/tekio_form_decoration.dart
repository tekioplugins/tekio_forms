import 'package:flutter/material.dart';

class TekioFormDecoration {
  /// Padding for the base form
  final EdgeInsetsGeometry formPadding;

  /// Padding for the sections
  final EdgeInsetsGeometry sectionPadding;

  /// Submit button padding
  final EdgeInsetsGeometry buttonPadding;

  /// Spacing between the form fields
  final double formsSpacing;

  TekioFormDecoration({
    required this.formPadding,
    required this.sectionPadding,
    required this.formsSpacing,
    required this.buttonPadding,
  });
}
