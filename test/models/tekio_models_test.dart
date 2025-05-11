import 'package:flutter_test/flutter_test.dart';
import 'package:tekio_forms/models/tekio_form_data.dart';

import '../test_util_data/test_utils/test_data.dart';
import '../test_util_data/test_utils/test_init.dart';

Future<void> main() async {
  TestInit.initBasics();

  final TekioFormData formData = await TestData.basicFormData01;
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
