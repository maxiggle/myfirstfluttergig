import 'package:flutter/materiaL.dart';

import '../../../../config/theme/colors.dart';
import '../../../../gen/assets.gen.dart';
import '../widgets/settings_card_line_item.dart';
import '../widgets/settings_section_header.dart';

class SettingsPointsSection extends StatelessWidget {
  const SettingsPointsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SettingsSectionHeader(
          icon: Assets.icons.coins.svg(color: kColorWhite),
          title: 'Tasks & Points',
        ),
        const SizedBox(height: 8),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(style: BorderStyle.solid, color: kColorGrey30),
          ),
          elevation: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SettingsCardLineItem(
                  title: 'Tasks Competed',
                  value: '52',
                ),
                Divider(height: 0, color: kColorGrey30, thickness: 1),
                const SettingsCardLineItem(
                  title: 'Accumulated Points (Worth):',
                  value: '18,900',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
