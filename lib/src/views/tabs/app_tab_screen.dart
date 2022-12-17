import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../config/theme/colors.dart';
import '../../../gen/assets.gen.dart';
import '../../../routes/router.gr.dart';
import '../../global_widgets/badge.dart';
import '../../helpers/translation_helpers.dart';

class AppTabScreen extends ConsumerWidget {
  const AppTabScreen({Key? key}) : super(key: key);

  final tasksNum = 0;
  final messagesNum = 2;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      routes: const [
        TasksRouter(),
        ContentRouter(),
        MessagesRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          backgroundColor: Theme.of(context).cardColor,
          elevation: 30,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: kColorBlack,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Badge(
                number: tasksNum,
                child: Assets.icons.tasks.svg(
                  width: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              icon: Badge(
                number: tasksNum,
                child: Assets.icons.tasks.svg(width: 20, color: kColorBlack),
              ),
              label: t(context, L.tasks),
            ),
            BottomNavigationBarItem(
              activeIcon: Assets.icons.content.svg(
                width: 20,
                color: Theme.of(context).primaryColor,
              ),
              icon: Assets.icons.content.svg(width: 20, color: kColorBlack),
              label: t(context, L.content),
            ),
            BottomNavigationBarItem(
              activeIcon: Badge(
                number: messagesNum,
                child: Assets.icons.message.svg(
                  width: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              icon: Badge(
                number: messagesNum,
                child: Assets.icons.message.svg(width: 20, color: kColorBlack),
              ),
              label: t(context, L.messages),
            ),
          ],
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
        );
      },
    );
  }
}
