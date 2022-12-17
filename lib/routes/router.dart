import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';

import '../src/views/app_holder_screen.dart';
import '../src/views/auth/login_screen.dart';
import '../src/views/settings/settings_screen.dart';
import '../src/views/splash_screen.dart';
import '../src/views/tabs/app_tab_screen.dart';
import '../src/views/tabs/content/content_screen.dart';
import '../src/views/tabs/content/single_content_screen.dart';
import '../src/views/tabs/messages/messages_screen.dart';
import '../src/views/tabs/messages/new_message_screen.dart';
import '../src/views/tabs/messages/single_message_screen.dart';
import '../src/views/tabs/tasks/single_task_screen.dart';
import '../src/views/tabs/tasks/tasks_screen.dart';

@CupertinoAutoRouter(
  routes: [
    CustomRoute(
      path: '/',
      initial: true,
      page: SplashScreen,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    AutoRoute(
      path: '/login',
      page: LoginScreen,
    ),
    AutoRoute(
      path: '/app',
      page: AppHolderScreen,
      children: [
        AutoRoute(
          path: 'tabs',
          initial: true,
          page: AppTabScreen,
          children: [
            AutoRoute(
              path: 'tasks',
              name: 'TasksRouter',
              page: EmptyRouterScreen,
              children: [
                AutoRoute(path: '', page: TasksScreen),
                AutoRoute(path: ':id', page: SingleTaskScreen),
              ],
            ),
            AutoRoute(
              path: 'content',
              name: 'ContentRouter',
              page: EmptyRouterScreen,
              children: [
                AutoRoute(path: '', page: ContentScreen),
                AutoRoute(path: ':id', page: SingleContentScreen),
              ],
            ),
            AutoRoute(
              path: 'messages',
              name: 'MessagesRouter',
              page: EmptyRouterScreen,
              children: [
                AutoRoute(path: '', page: MessagesScreen),
                AutoRoute(path: ':id', page: SingleMessageScreen),
                AutoRoute(path: 'new-message', page: NewMessageScreen),
              ],
            ),
          ],
        ),
        AutoRoute(
          path: 'settings',
          page: SettingsScreen,
          // fullscreenDialog: true,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
