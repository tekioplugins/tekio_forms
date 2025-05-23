import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tekio_forms/models/models.dart';
import 'package:tekio_forms/widgets/tekio_form.dart';

Future<void> main() async {
  testWidgets(
    "Testing Text Form Field",
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TekioTextField(
              formFieldsData: TekioFieldData(
                fieldKey: 'test_key',
                fieldType: TekioFieldType.textField,
                fieldLabel: 'test_text_label',
              ),
            ),
          ),
        ),
      );

      expect(find.byKey(Key('test_key')), findsOneWidget);
      expect(find.byType(TekioTextField), findsOneWidget);
    },
  );
}
