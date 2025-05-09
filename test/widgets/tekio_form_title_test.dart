// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:tekio_forms/models/tekio_form_data.dart';
// import 'package:tekio_forms/widgets/tekio_form_title.dart';

// Future<void> main() async {
//   TestWidgetsFlutterBinding.ensureInitialized();

//   final String jsonString = await rootBundle.loadString(
//       'test/test_json_data/test_form_build_data/json_form_data_01.json');

//   final TekioFormData formData = TekioFormData.fromJson(jsonDecode(jsonString));
//   testWidgets('TekioFormTitle widget is build', (tester) async {
//     await tester.pumpWidget(
//       Material(
//         child: Scaffold(
//           appBar: AppBar(
//             title: TekioFormTitle(
//               formData: formData,
//             ),
//           ),
//         ),
//       ),
//     );

//     // await tester.pump();
//     expect(find.text('form_title'), findsOneWidget);

//     // expect(find.byType(TekioFormTitle), findsOneWidget);
//   });
// }
