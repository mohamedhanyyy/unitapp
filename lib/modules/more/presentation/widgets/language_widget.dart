import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unit/services/navigation/navigation.dart';
import 'package:unit/services/shared_preferences/preferences_helper.dart';


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
        Text("language".tr(),style: Theme.of(context).textTheme.bodyMedium,),
        RadioListTile.adaptive(
            title:   Text("Arabic".tr(),style: Theme.of(context).textTheme.bodySmall),
            value: 0,
            fillColor: WidgetStateProperty.all(Theme.of(context).hintColor),
            activeColor: Theme.of(context).primaryColor,
            // selectedTileColor: Theme.of(context).hintColor,
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
            title:   Text("English".tr(),style: Theme.of(context).textTheme.bodySmall),
            value: 1,
            fillColor: WidgetStateProperty.all(Theme.of(context).hintColor),

            activeColor: Theme.of(context).primaryColor,
            // selectedTileColor: Theme.of(context).hintColor,
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
