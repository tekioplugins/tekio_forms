import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:tekio_forms/models/tekio_form_data.dart';

class TestData {
  static Future<TekioFormData> get basicFormData01 async {
    String jsonString = await rootBundle.loadString(
        'test/test_util_data/test_form_json/json_form_data_01.json');
    return TekioFormData.fromJson(jsonDecode(jsonString));
  }

  static Future<Map<String, dynamic>> get basicInitialData01 async {
    String jsonString = await rootBundle.loadString(
        'test/test_util_data/test_initial_json/json_initial_data_01.json');
    return jsonDecode(jsonString);
  }
}
