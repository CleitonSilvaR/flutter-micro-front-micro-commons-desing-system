import 'package:flutter/material.dart';
import 'package:flutter_micro_front_micro_commons_desing_system/widgets/button/custom_button_widget.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens("CustomButtonWidget - Multiples Scenarios", (tester) async {
    final builder = GoldenBuilder.grid(columns: 3, widthToHeightRatio: 1)
      ..addScenario(
        'Default',
        CustomButtonWidget(
          text: 'CustomButton',
          onPressed: () {},
        ),
      )
      ..addScenario(
        'Outlier',
        CustomButtonWidget(
          text: 'CustomButton',
          onPressed: () {},
          outline: true,
        ),
      )
      ..addScenario(
        'noBorder',
        CustomButtonWidget(
          text: 'CustomButton',
          onPressed: () {},
          noBorder: true,
        ),
      )
      ..addScenario(
        'Disbled',
        CustomButtonWidget(
          text: 'CustomButton',
          onPressed: () {},
          enabled: false,
        ),
      )
      ..addScenario(
        'Padding',
        CustomButtonWidget(
          text: 'CustomButton',
          onPressed: () {},
          padding: const EdgeInsets.all(20),
        ),
      )
      ..addScenario(
        'TextSize',
        CustomButtonWidget(
          text: 'CustomButton',
          onPressed: () {},
          textSize: 16,
        ),
      );

    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(500, 300),
    );
    await screenMatchesGolden(tester, 'custonButton_multiples_states');
  });
}
