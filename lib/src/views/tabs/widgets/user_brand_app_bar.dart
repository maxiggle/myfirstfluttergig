import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/theme/typography.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../routes/router.gr.dart';
import '../../../helpers/translation_helpers.dart';

class UserBrandAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserBrandAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Assets.dev.brandLogo.image(height: 40, width: 40),
              const SizedBox(width: 8),
              Container(
                height: 21,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: kColorBlue20,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Assets.icons.coins.svg(width: 12, height: 12),
                    const SizedBox(width: 5),
                    Texty.microBold('1800'),
                    const SizedBox(width: 1),
                    Texty.nanoBold('points'),
                  ],
                ),
              ),
              const Spacer(),
              Texty.smallSemiBold(
                '${t(context, L.hello)} Raymond',
                color: kColorWhite,
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  final currentPath = AutoRouter.of(context).currentPath;
                  if (currentPath != '/app/settings') {
                    AutoRouter.of(context).push(const SettingsScreenRoute());
                  }
                },
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage: Assets.dev.userAvatar.provider(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
