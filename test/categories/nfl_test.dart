import 'package:flutter/material.dart';
import 'package:flutter_any_logo/src/model/class.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/constants.dart';
import '../helpers/helpers.dart';
import '../helpers/pump_widget.dart';

void main() {
  group('NFL List Tests', () {
    testWidgets('Verify All Logos Should load', (WidgetTester tester) async {
      await tester.pumpWidget(PumpWidget.nfl);
      // Verify that all logo launch
      final int number = AnyLogoTest.numberOfLogos(Const.nfl);
      expect(find.byType(Image, skipOffstage: false), findsNWidgets(number));
    });

    testWidgets('Verify no exception is thrown', (WidgetTester tester) async {
      await tester.pumpWidget(PumpWidget.nfl);
      AnyLogoTest.testException(tester);
    });

    testWidgets(
        'Verify the last item displayed is the same as the last in the list',
        (WidgetTester tester) async {
      await tester.pumpWidget(PumpWidget.nfl);
      AnyLogoTest.testDisplayedLogos(tester, AnyLogo.nfl.values);
    });
  });
}