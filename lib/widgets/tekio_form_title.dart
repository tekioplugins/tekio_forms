import 'package:flutter/material.dart';
import 'package:tekio_forms/models/tekio_form_data.dart';

class TekioFormTitle extends Column {
  TekioFormTitle({
    super.key,
    required TekioFormData formData,
  }) : super(
          children: [
            if (formData.formTile != null && formData.formTile!.isNotEmpty)
              Builder(builder: (context) {
                return Text(
                  formData.formTile ?? '',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                );
              }),
            if (formData.formSubTitle != null &&
                formData.formSubTitle!.isNotEmpty)
              Builder(builder: (context) {
                return Text(
                  formData.formSubTitle ?? '',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                );
              }),
          ],
        );
}
