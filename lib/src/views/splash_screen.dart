import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../routes/router.gr.dart';
import '../services/settings/settings_controller.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 0), () async {
      await ref.watch(podOfSettingsController).loadSettings();
      await attemptLogin();
    });
  }

  Future<void> attemptLogin() async {
    // try {
    //   final res = await ref.watch(podOfAuthController).tryAndLoadUser();
    //   if (res) {
    //     AutoRouter.of(context).replace(const AppTabScreenRoute());
    //     return;
    //   }
    // } catch (_) {
    //   AutoRouter.of(context).replace(const LoginScreenRoute());
    //   return;
    // }

    AutoRouter.of(context).replace(LoginScreenRoute());
    // AutoRouter.of(context).replace(const AppHolderScreenRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            // Hero(tag: 'logo', child: Image.asset(Assets.logos.logoPng.path)),
            SizedBox(height: 20),
            SizedBox(
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
