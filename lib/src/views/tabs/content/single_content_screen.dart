import 'package:flutter/material.dart';

import '../../../global_widgets/app_back_button.dart';

class SingleContentScreen extends StatelessWidget {
  const SingleContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Single Content'),
      ),
    );
  }
}
