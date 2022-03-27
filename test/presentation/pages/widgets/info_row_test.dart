import 'package:covid_tracking/presentation/pages/tracking/widgets/info_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/any.dart';

void main() {
  testWidgets('InfoRow widget test', (WidgetTester tester) async {
    final title = Any.alphaNumericString(10);
    final info = Any.alphaNumericString(10);
    await tester.pumpWidget(MaterialApp(
      home: InfoRow(
        info: title,
        title: info,
      ),
    ));

    expect(find.text(info), findsOneWidget);
    expect(find.text(title), findsOneWidget);
  });
}
