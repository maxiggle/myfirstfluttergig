import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../config/theme/buttons.dart';
import '../../../config/theme/colors.dart';
import '../../../config/theme/typography.dart';
import '../../../gen/assets.gen.dart';
import '../../../routes/router.gr.dart';
import 'widget/custom_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xffF1F8FD),
            Color(0xffF6FAFE),
            Color(0xffDAEBFB),
            Color(0xffE8F3FC)
          ],
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 90),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icons.message
                        .svg(color: kColorBlue, height: 33.53, width: 32),
                    const SizedBox(width: 16),
                    Assets.icons.teamtalk.svg(),
                  ],
                ),
                const SizedBox(height: 72),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texty.h2('Log In'),
                      const SizedBox(height: 32),
                      Texty.smallSemiBold('Email Address'),
                      const SizedBox(height: 4),
                      CustomInputField(
                        inputController: textEditingController,
                        hintText: 'Email email address',
                        labelText: '',
                      ),
                      const SizedBox(height: 32),
                      Texty.smallSemiBold('Password'),
                      const SizedBox(height: 4),
                      CustomInputField(
                        inputController: textEditingController,
                        hintText: 'Enter Password',
                        labelText: '',
                      ),
                      const SizedBox(height: 32),
                      SizedBox(
                        width: double.infinity,
                        child: AppButton(
                          'Login',
                          type: ButtonTypes.primary,
                          onPressed: () {
                            AutoRouter.of(context)
                                .replace(const AppHolderScreenRoute());
                          },
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Texty.smallSemiBold('Click Here to'),
                          TextButton(
                            onPressed: () {},
                            child: Texty.smallSemiBold(
                              'Register',
                              color: kColorBlue,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 120)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
