// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:auto_route/empty_router_widgets.dart' as _i6;
import 'package:flutter/material.dart' as _i15;

import '../src/views/app_holder_screen.dart' as _i3;
import '../src/views/auth/login_screen.dart' as _i2;
import '../src/views/settings/settings_screen.dart' as _i5;
import '../src/views/splash_screen.dart' as _i1;
import '../src/views/tabs/app_tab_screen.dart' as _i4;
import '../src/views/tabs/content/content_screen.dart' as _i9;
import '../src/views/tabs/content/single_content_screen.dart' as _i10;
import '../src/views/tabs/messages/messages_screen.dart' as _i11;
import '../src/views/tabs/messages/new_message_screen.dart' as _i13;
import '../src/views/tabs/messages/single_message_screen.dart' as _i12;
import '../src/views/tabs/tasks/single_task_screen.dart' as _i8;
import '../src/views/tabs/tasks/tasks_screen.dart' as _i7;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
        transitionsBuilder: _i14.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i2.LoginScreen(key: args.key),
      );
    },
    AppHolderScreenRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.AppHolderScreen(),
      );
    },
    AppTabScreenRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AppTabScreen(),
      );
    },
    SettingsScreenRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SettingsScreen(),
      );
    },
    TasksRouter.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i6.EmptyRouterScreen(),
      );
    },
    ContentRouter.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i6.EmptyRouterScreen(),
      );
    },
    MessagesRouter.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i6.EmptyRouterScreen(),
      );
    },
    TasksScreenRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i7.TasksScreen(),
      );
    },
    SingleTaskScreenRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SingleTaskScreen(),
      );
    },
    ContentScreenRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i9.ContentScreen(),
      );
    },
    SingleContentScreenRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SingleContentScreen(),
      );
    },
    MessagesScreenRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i11.MessagesScreen(),
      );
    },
    SingleMessageScreenRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i12.SingleMessageScreen(),
      );
    },
    NewMessageScreenRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i13.NewMessageScreen(),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i14.RouteConfig(
          LoginScreenRoute.name,
          path: '/login',
        ),
        _i14.RouteConfig(
          AppHolderScreenRoute.name,
          path: '/app',
          children: [
            _i14.RouteConfig(
              '#redirect',
              path: '',
              parent: AppHolderScreenRoute.name,
              redirectTo: 'tabs',
              fullMatch: true,
            ),
            _i14.RouteConfig(
              AppTabScreenRoute.name,
              path: 'tabs',
              parent: AppHolderScreenRoute.name,
              children: [
                _i14.RouteConfig(
                  TasksRouter.name,
                  path: 'tasks',
                  parent: AppTabScreenRoute.name,
                  children: [
                    _i14.RouteConfig(
                      TasksScreenRoute.name,
                      path: '',
                      parent: TasksRouter.name,
                    ),
                    _i14.RouteConfig(
                      SingleTaskScreenRoute.name,
                      path: ':id',
                      parent: TasksRouter.name,
                    ),
                  ],
                ),
                _i14.RouteConfig(
                  ContentRouter.name,
                  path: 'content',
                  parent: AppTabScreenRoute.name,
                  children: [
                    _i14.RouteConfig(
                      ContentScreenRoute.name,
                      path: '',
                      parent: ContentRouter.name,
                    ),
                    _i14.RouteConfig(
                      SingleContentScreenRoute.name,
                      path: ':id',
                      parent: ContentRouter.name,
                    ),
                  ],
                ),
                _i14.RouteConfig(
                  MessagesRouter.name,
                  path: 'messages',
                  parent: AppTabScreenRoute.name,
                  children: [
                    _i14.RouteConfig(
                      MessagesScreenRoute.name,
                      path: '',
                      parent: MessagesRouter.name,
                    ),
                    _i14.RouteConfig(
                      SingleMessageScreenRoute.name,
                      path: ':id',
                      parent: MessagesRouter.name,
                    ),
                    _i14.RouteConfig(
                      NewMessageScreenRoute.name,
                      path: 'new-message',
                      parent: MessagesRouter.name,
                    ),
                  ],
                ),
              ],
            ),
            _i14.RouteConfig(
              SettingsScreenRoute.name,
              path: 'settings',
              parent: AppHolderScreenRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i14.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i14.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({_i15.Key? key})
      : super(
          LoginScreenRoute.name,
          path: '/login',
          args: LoginScreenRouteArgs(key: key),
        );

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.AppHolderScreen]
class AppHolderScreenRoute extends _i14.PageRouteInfo<void> {
  const AppHolderScreenRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AppHolderScreenRoute.name,
          path: '/app',
          initialChildren: children,
        );

  static const String name = 'AppHolderScreenRoute';
}

/// generated route for
/// [_i4.AppTabScreen]
class AppTabScreenRoute extends _i14.PageRouteInfo<void> {
  const AppTabScreenRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AppTabScreenRoute.name,
          path: 'tabs',
          initialChildren: children,
        );

  static const String name = 'AppTabScreenRoute';
}

/// generated route for
/// [_i5.SettingsScreen]
class SettingsScreenRoute extends _i14.PageRouteInfo<void> {
  const SettingsScreenRoute()
      : super(
          SettingsScreenRoute.name,
          path: 'settings',
        );

  static const String name = 'SettingsScreenRoute';
}

/// generated route for
/// [_i6.EmptyRouterScreen]
class TasksRouter extends _i14.PageRouteInfo<void> {
  const TasksRouter({List<_i14.PageRouteInfo>? children})
      : super(
          TasksRouter.name,
          path: 'tasks',
          initialChildren: children,
        );

  static const String name = 'TasksRouter';
}

/// generated route for
/// [_i6.EmptyRouterScreen]
class ContentRouter extends _i14.PageRouteInfo<void> {
  const ContentRouter({List<_i14.PageRouteInfo>? children})
      : super(
          ContentRouter.name,
          path: 'content',
          initialChildren: children,
        );

  static const String name = 'ContentRouter';
}

/// generated route for
/// [_i6.EmptyRouterScreen]
class MessagesRouter extends _i14.PageRouteInfo<void> {
  const MessagesRouter({List<_i14.PageRouteInfo>? children})
      : super(
          MessagesRouter.name,
          path: 'messages',
          initialChildren: children,
        );

  static const String name = 'MessagesRouter';
}

/// generated route for
/// [_i7.TasksScreen]
class TasksScreenRoute extends _i14.PageRouteInfo<void> {
  const TasksScreenRoute()
      : super(
          TasksScreenRoute.name,
          path: '',
        );

  static const String name = 'TasksScreenRoute';
}

/// generated route for
/// [_i8.SingleTaskScreen]
class SingleTaskScreenRoute extends _i14.PageRouteInfo<void> {
  const SingleTaskScreenRoute()
      : super(
          SingleTaskScreenRoute.name,
          path: ':id',
        );

  static const String name = 'SingleTaskScreenRoute';
}

/// generated route for
/// [_i9.ContentScreen]
class ContentScreenRoute extends _i14.PageRouteInfo<void> {
  const ContentScreenRoute()
      : super(
          ContentScreenRoute.name,
          path: '',
        );

  static const String name = 'ContentScreenRoute';
}

/// generated route for
/// [_i10.SingleContentScreen]
class SingleContentScreenRoute extends _i14.PageRouteInfo<void> {
  const SingleContentScreenRoute()
      : super(
          SingleContentScreenRoute.name,
          path: ':id',
        );

  static const String name = 'SingleContentScreenRoute';
}

/// generated route for
/// [_i11.MessagesScreen]
class MessagesScreenRoute extends _i14.PageRouteInfo<void> {
  const MessagesScreenRoute()
      : super(
          MessagesScreenRoute.name,
          path: '',
        );

  static const String name = 'MessagesScreenRoute';
}

/// generated route for
/// [_i12.SingleMessageScreen]
class SingleMessageScreenRoute extends _i14.PageRouteInfo<void> {
  const SingleMessageScreenRoute()
      : super(
          SingleMessageScreenRoute.name,
          path: ':id',
        );

  static const String name = 'SingleMessageScreenRoute';
}

/// generated route for
/// [_i13.NewMessageScreen]
class NewMessageScreenRoute extends _i14.PageRouteInfo<void> {
  const NewMessageScreenRoute()
      : super(
          NewMessageScreenRoute.name,
          path: 'new-message',
        );

  static const String name = 'NewMessageScreenRoute';
}
