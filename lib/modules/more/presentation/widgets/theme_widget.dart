import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unit/services/shared_preferences/preferences_helper.dart';
import 'package:unit/shared/functions/restart_app.dart';

class ThemeWidget extends StatefulWidget {
  const ThemeWidget({super.key});

  @override
  State<ThemeWidget> createState() => _ThemeWidgetState();
}

class _ThemeWidgetState extends State<ThemeWidget> {
  int light = PreferencesHelper.getTheme == 'light' ? 0 : 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Theme".tr(), style: Theme.of(context).textTheme.bodyLarge),
        RadioListTile.adaptive(
            title: Text(
              "Light".tr(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            value: 0,
            activeColor: Theme.of(context).secondaryHeaderColor,
            groupValue: light,
            onChanged: (val) {
              setState(() {
                light = val!;
              });
              PreferencesHelper.saveTheme(theme: 'light');
              RestartWidget.restartApp();
              // AppNavigation.pop();
            }),
        RadioListTile.adaptive(
            title: Text(
              "Dark".tr(),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            value: 1,
            // activeColor: Theme.of(context).highlightColor,
            groupValue: light,
            onChanged: (val) {
              setState(() {
                light = val!;
              });
              PreferencesHelper.saveTheme(theme: 'dark');
              RestartWidget.restartApp();
            })
      ],
    );
  }
}
