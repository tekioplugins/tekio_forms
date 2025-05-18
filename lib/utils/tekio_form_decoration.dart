import 'package:flutter/material.dart';

enum TekioAlignment {
  start(TextAlign.start),
  center(TextAlign.center),
  end(TextAlign.end);

  final TextAlign textAlign;

  const TekioAlignment(this.textAlign);
}

class TekioFormDecoration {
  /// Padding for the base form
  final EdgeInsetsGeometry formPadding;

  /// Padding for the sections
  final EdgeInsetsGeometry sectionPadding;

  /// Spacing between the form fields
  final double formsSpacing;

  /// Alignment to be applyed on Titles and SubTiles for sections and field placement on the screen.
  ///
  /// Default: TextAlign.center
  final TekioAlignment tekioAlignment;
  const TekioFormDecoration({
    this.formPadding = const EdgeInsets.symmetric(horizontal: 12.0),
    this.sectionPadding = const EdgeInsets.only(bottom: 12.0),
    this.formsSpacing = 10.0,
    this.tekioAlignment = TekioAlignment.start,
  });
}
