import 'package:flutter/materiaL.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/theme/typography.dart';

class SettingsSectionHeader extends StatelessWidget {
  const SettingsSectionHeader({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 12,
          backgroundColor: kColorBlue,
          child: icon,
        ),
        const SizedBox(width: 8),
        Texty.h5(title),
      ],
    );
  }
}
