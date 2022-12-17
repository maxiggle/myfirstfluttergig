import 'package:flutter/materiaL.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/theme/typography.dart';
import '../../../../gen/assets.gen.dart';
import '../widgets/settings_card_line_item.dart';
import '../widgets/settings_section_header.dart';

class SettingsInfoSection extends StatelessWidget {
  const SettingsInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SettingsSectionHeader(
          icon: Assets.icons.user.svg(color: kColorWhite),
          title: 'Personal Info',
        ),
        const SizedBox(height: 8),
        Card(
          margin: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(style: BorderStyle.solid, color: kColorGrey30),
          ),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SettingsCardLineItem(
                  title: 'Email Address:',
                  value: 'godwinG@gmail.com',
                ),
                Divider(height: 0, color: kColorGrey30, thickness: 1),
                const SettingsCardLineItem(
                  title: 'Phone Number:',
                  value: '08012345678',
                ),
                Divider(height: 0, color: kColorGrey30, thickness: 1),
                SettingsCardLineItem(
                  title: 'Password:',
                  value: 'change',
                  removeVerticalPadding: true,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      minimumSize: const Size(0, 0),
                    ),
                    onPressed: () {},
                    child: Texty.small('Change', color: kColorBlue),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
