import 'package:flutter/material.dart';

import '../../../../config/theme/typography.dart';

class SettingsCardLineItem extends StatelessWidget {
  const SettingsCardLineItem({
    Key? key,
    required this.title,
    required this.value,
    this.removeVerticalPadding = false,
    this.child,
  }) : super(key: key);

  final String title;
  final String value;
  final bool removeVerticalPadding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: removeVerticalPadding ? 0 : 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Texty.small(title),
          const SizedBox(width: 6),
          if (child != null)
            child!
          else
            Texty.bodyBold(
              value,
              overflow: TextOverflow.ellipsis,
            )
        ],
      ),
    );
  }
}
