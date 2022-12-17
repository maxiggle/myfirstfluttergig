import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../config/theme/app_theme.dart';
import '../routes/router.gr.dart';
import 'services/settings/settings_controller.dart';

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsController = ref.watch(podOfSettingsController);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'teamtalkapp',
      onGenerateTitle: (BuildContext context) => 'teamtalkapp',
      theme: appTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      localizationsDelegates: const [
        ...AppLocalizations.localizationsDelegates,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        ...AppLocalizations.supportedLocales,
      ],
      locale: settingsController.language,
    );
  }
}
