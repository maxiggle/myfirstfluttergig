import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme/buttons.dart';
import '../../../../routes/router.gr.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Align(
            child: AppButton(
              'Single Task Page',
              onPressed: () {
                AutoRouter.of(context).push(const SingleTaskScreenRoute());
              },
            ),
          ),
          const SizedBox(height: 10),
          Align(
            child: AppButton.small(
              'Button Text',
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 10),
          Align(
            child: AppButton(
              'Button Text',
              onPressed: () {},
              type: ButtonTypes.green,
            ),
          ),
          const SizedBox(height: 10),
          Align(
            child: AppButton.small(
              'Button Text',
              onPressed: () {},
              type: ButtonTypes.green,
            ),
          ),
          const SizedBox(height: 10),
          Align(
            child: AppButton(
              'Button Text',
              onPressed: () {},
              type: ButtonTypes.red,
            ),
          ),
          const SizedBox(height: 10),
          Align(
            child: AppButton.small(
              'Button Text',
              onPressed: () {},
              type: ButtonTypes.red,
            ),
          ),
          const SizedBox(height: 10),
          Align(
            child: AppButton(
              'Button Text',
              onPressed: () {},
              type: ButtonTypes.outline,
            ),
          ),
          const SizedBox(height: 10),
          Align(
            child: AppButton.small(
              'Button Text',
              onPressed: () {},
              type: ButtonTypes.outline,
            ),
          ),
        ],
      ),
    );
  }
}
