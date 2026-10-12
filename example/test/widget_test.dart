import 'package:example/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  testWidgets('Icons Flutter app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Icons Flutter'), findsOneWidget);
    expect(find.byType(Icon), findsWidgets);
  });
}
