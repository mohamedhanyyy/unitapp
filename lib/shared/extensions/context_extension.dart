import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

extension CurrentLang on BuildContext {
  bool get isCurrentEnglish => locale == const Locale('en');

  EdgeInsets get bottomInsetsAndAllPadding => EdgeInsets.only(
      bottom: MediaQuery.of(this).viewInsets.bottom,
      left: 20,
      right: 20,
      top: 20);

  EdgeInsets get bottomInsetsPadding =>
      EdgeInsets.only(bottom: MediaQuery.of(this).viewInsets.bottom);
}

extension ToColorFilter on Color {
  ColorFilter? get toColorFilter => ColorFilter.mode(this, BlendMode.srcIn);
}

extension FormatHour on String {
  String get formatHour =>
      replaceAll('AM', 'AM'.tr()).replaceAll('PM', 'PM'.tr());
}
