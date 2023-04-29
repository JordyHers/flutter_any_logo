import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/constants.dart';
import '../helpers/helpers.dart';
import '../helpers/pump_widget.dart';

void main() {
  group('Media Logos Tests', () {
    testWidgets('Verify  All Logos Should load', (WidgetTester tester) async {
      await tester.pumpWidget(PumpWidget.media);
      // Verify that all logo launch
      final int number = LogoTest.numberOfLogos(Const.media);
      expect(find.byType(Image, skipOffstage: false), findsNWidgets(number));
    });

    testWidgets('Verify no exception is thrown', (WidgetTester tester) async {
      await tester.pumpWidget(PumpWidget.media);
      LogoTest.testException(tester);
    });

    testWidgets(
        'Verify the last item displayed is the same as the last in the list',
        (WidgetTester tester) async {
      await tester.pumpWidget(PumpWidget.media);
      LogoTest.testDisplayedLogos(tester, Media.values);
    });
  });
}