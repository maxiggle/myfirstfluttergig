import 'package:flutter/material.dart';

import '../../../../config/theme/buttons.dart';
import '../../../../config/theme/colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../global_widgets/app_back_button.dart';

class SingleTaskScreen extends StatelessWidget {
  const SingleTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Single Task'),
      ),
      body: Center(
        child: AppButton(
          'Take Screenshot',
          onPressed: () {},
          icon: Assets.icons.camera.svg(),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(width: 1, color: kColorGrey30),
            bottom: BorderSide(width: 1, color: kColorGrey30),
          ),
        ),
        child: Row(
          children: [
            AppButton.small(
              'Back',
              type: ButtonTypes.outline,
              onPressed: () {},
            ),
            const SizedBox(width: 12),
            Expanded(
              child: AppButton.small(
                'Reject',
                type: ButtonTypes.red,
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: AppButton.small(
                'Accept Task',
                type: ButtonTypes.green,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
