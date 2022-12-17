import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key, this.color, this.onPressed});

  final Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Assets.icons.backButton.svg(height: 28),
      color: color,
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        } else {
          Navigator.maybePop(context);
        }
      },
    );
  }
}
