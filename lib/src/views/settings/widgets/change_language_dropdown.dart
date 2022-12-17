import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/theme/typography.dart';
import '../../../services/settings/settings_controller.dart';

class ChangeLanguageDropdown extends ConsumerWidget {
  const ChangeLanguageDropdown({super.key});

  final String selectedValue = 'en';

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(value: 'en', child: Texty.small('English')),
      DropdownMenuItem(value: 'he', child: Texty.small('Hebrew')),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButtonFormField(
      focusNode: FocusNode(),
      focusColor: kColorGrey30,
      icon: Texty.small('Change', color: kColorBlue),
      decoration: InputDecoration(
        filled: true,
        fillColor: kColorWhite,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kColorGrey30),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: kColorGrey30),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      ),
      items: dropdownItems,
      value: selectedValue,
      onChanged: (String? newValue) {
        ref.read(podOfSettingsController.notifier).updateLanguage(newValue);
      },
    );
  }
}
