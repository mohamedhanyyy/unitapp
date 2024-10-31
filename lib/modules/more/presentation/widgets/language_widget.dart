import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unit/services/navigation/navigation.dart';
import 'package:unit/services/shared_preferences/preferences_helper.dart';

import '../../../../core/resources/colors.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({super.key});

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  int arabic = PreferencesHelper.getLang == 'ar' ? 0 : 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("language".tr()),
        RadioListTile.adaptive(
            title:   Text("Arabic".tr()),
            value: 0,
            activeColor: AppColors.primaryColor,
            groupValue: arabic,
            onChanged: (val) {
              setState(() {
                arabic = val!;
              });
              context.setLocale(const Locale('ar'));
              PreferencesHelper.saveLang(lang: 'ar');
              AppNavigation.pop();
            }),
        RadioListTile.adaptive(
            title:   Text("English".tr()),
            value: 1,
            activeColor: AppColors.primaryColor,
            groupValue: arabic,
            onChanged: (val) {
              setState(() {
                arabic = val!;
              });
              context.setLocale(const Locale('en'));
              PreferencesHelper.saveLang(lang: 'en');
              AppNavigation.pop();
            })
      ],
    );
  }
}
