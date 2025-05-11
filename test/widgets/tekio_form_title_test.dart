// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:tekio_forms/models/tekio_form_data.dart';
// import 'package:tekio_forms/widgets/tekio_form_title.dart';
// import '../test_util_data/test_utils/test_data.dart';
// import '../test_util_data/test_utils/test_init.dart';

// Future<void> main() async {
//   TestInit.initBasics();
//   final TekioFormData formData = await TestData.basicFormData01;
//   testWidgets('TekioFormTitle widget is build', (tester) async {
//     await tester.pumpWidget(
//       Material(
//         child: Scaffold(
//           appBar: AppBar(
//             title: TekioFormTitle(
//               title: formData.formTile,
//               subtitle: formData.formSubTitle,
//             ),
//           ),
//         ),
//       ),
//     );
//     expect(find.text('form_title'), findsOneWidget);
//     expect(find.byType(TekioFormTitle), findsOneWidget);
//   });
// }
