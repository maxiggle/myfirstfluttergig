import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'tabs/widgets/user_brand_app_bar.dart';

class AppHolderScreen extends StatelessWidget {
  const AppHolderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: UserBrandAppBar(),
      body: AutoRouter(),
    );
  }
}
