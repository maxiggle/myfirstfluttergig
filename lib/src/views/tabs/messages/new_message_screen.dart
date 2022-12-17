import 'package:flutter/material.dart';

import '../../../global_widgets/app_back_button.dart';

class NewMessageScreen extends StatelessWidget {
  const NewMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('New Message'),
      ),
    );
  }
}
