import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tekio_forms/models/tekio_form_data.dart';

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();

  final String jsonString = await rootBundle.loadString(
      'test/test_json_data/test_form_build_data/json_form_data_01.json');

  final TekioFormData formData = TekioFormData.fromJson(jsonDecode(jsonString));

  test('Form section data order', () async {
    expect(formData.formSections[0].sectionKey, "section_key_0");
    expect(formData.formSections[1].sectionKey, "section_key_1");
    expect(formData.formSections[2].sectionKey, "section_key_2");
    expect(formData.formSections[3].sectionKey, "section_key_5");
  });

  test('Form fields data order', () async {
    expect(formData.formSections.last.formFields?[0].fieldKey, "field_key_01");
    expect(formData.formSections.last.formFields?[1].fieldKey, "field_key_02");
    expect(formData.formSections.last.formFields?[2].fieldKey, "field_key_3");
    expect(formData.formSections.last.formFields?[3].fieldKey, "field_key_4");
  });
}
