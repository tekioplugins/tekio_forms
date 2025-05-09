import 'package:flutter/material.dart';

//TODO: Find better solution for this.
class TekioFormTitle extends Builder {
  final String? title;
  final String? subtitle;
  TekioFormTitle({
    super.key,
    this.title,
    this.subtitle,
  }) : super(
          builder: (context) => Column(
            children: [
              if (title != null && title.isNotEmpty)
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              if (subtitle != null && subtitle.isNotEmpty)
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
            ],
          ),
        );
}
