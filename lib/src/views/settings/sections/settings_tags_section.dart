import 'package:flutter/materiaL.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/theme/typography.dart';
import '../../../../gen/assets.gen.dart';
import '../widgets/settings_section_header.dart';

class SettingsTagsSection extends StatelessWidget {
  const SettingsTagsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SettingsSectionHeader(
          icon: Assets.icons.hashtag.svg(color: kColorWhite),
          title: 'Tags',
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 10,
            children: [
              'Pepsi',
              'Coca Cola',
              'Branding',
              'Publicity',
              'KFC',
              'Advertising',
              'Customer Service',
              'Feedback',
            ]
                .map(
                  (t) => Chip(
                    visualDensity: VisualDensity.compact,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 2,
                      vertical: 0,
                    ),
                    backgroundColor: kColorWhite,
                    side: BorderSide(color: kColorBlue),
                    label: Texty.smallSemiBold(t, color: kColorBlue),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
