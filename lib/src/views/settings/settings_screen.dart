import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../config/theme/buttons.dart';
import '../../../config/theme/colors.dart';
import '../../../config/theme/typography.dart';
import '../../../gen/assets.gen.dart';
import '../../../routes/router.gr.dart';
import '../../global_widgets/app_back_button.dart';
import 'sections/settings_info_section.dart';
import 'sections/settings_points_section.dart';
import 'sections/settings_tags_section.dart';
import 'widgets/change_language_dropdown.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 40),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: Assets.dev.userAvatar.provider(),
                    backgroundColor: Colors.transparent,
                  ),
                  const SizedBox(width: 16),
                  Texty.h4('Samuel Joseph'),
                ],
              ),
              const SizedBox(height: 32),
              const SettingsInfoSection(),
              const SizedBox(height: 32),
              const SettingsPointsSection(),
              const SizedBox(height: 32),
              const SettingsTagsSection(),
              const SizedBox(height: 32),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: kColorBlue,
                    radius: 10,
                    child: Assets.icons.changeLanguage.svg(),
                  ),
                  const SizedBox(width: 8),
                  Texty.h5('Language'),
                  const SizedBox(height: 8),
                ],
              ),
              const SizedBox(height: 8),
              const ChangeLanguageDropdown(),
              const SizedBox(height: 48),
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  'Logout',
                  onPressed: () {
                    AutoRouter.of(context).replace(const SplashScreenRoute());
                  },
                  type: ButtonTypes.red,
                ),
              ),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}
