import 'package:bitcode_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Verify main app loads correctly', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the app contains a widget of type MaterialApp.
    expect(find.byType(MaterialApp), findsOneWidget);

    // Verify that the app contains a widget of type Scaffold.
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
