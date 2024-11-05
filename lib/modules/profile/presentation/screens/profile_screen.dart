import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit/core/extensions/context_extension.dart';
import 'package:unit/core/resources/styles.dart';
import 'package:unit/shared/widgets/custom_divider.dart';

import '../../../../core/resources/icons.dart';
import '../../../../shared/widgets/custom_appbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 46),
          child: CustomAppbar('profile')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text(
              "profile information".tr(),
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            ),
            const Text(
              "معلوماتك الشخصية مسندة من منصة نافذ يتم استخدامها فقط للتأكد من صحة الحساب الخاص بك.",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff686868)),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'full name'.tr(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Text('شركة سردة',
                  style: Theme.of(context).textTheme.bodySmall),
              trailing: Text("edit".tr(),
                  style: primary14W400.copyWith(
                      color: Theme.of(context).primaryColor,

                      height: 0, decoration: TextDecoration.underline)),
              leading: SvgPicture.asset(
                AppIcons.profileInfo,
                colorFilter: Theme.of(context).primaryColor.toColorFilter,
              ),
            ),
            const CustomDivider(indent: 0),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'الرقم الوطني',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Text('5552046300',
                  style: Theme.of(context).textTheme.bodySmall),
              trailing: Text("edit".tr(),
                  style: primary14W400.copyWith(
                      color: Theme.of(context).primaryColor,

                      height: 0, decoration: TextDecoration.underline)),
              leading: SvgPicture.asset(AppIcons.profileInfo,
                  colorFilter: Theme.of(context).primaryColor.toColorFilter),
            ),
            const CustomDivider(indent: 0),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('address'.tr(),
                  style: Theme.of(context).textTheme.bodyMedium),
              subtitle: Text('شركة سردة',
                  style: Theme.of(context).textTheme.bodySmall),
              trailing: Text("edit".tr(),
                  style: primary14W400.copyWith(
                      color: Theme.of(context).primaryColor,

                      height: 0, decoration: TextDecoration.underline)),
              leading: SvgPicture.asset(AppIcons.profileInfo,
                  colorFilter: Theme.of(context).primaryColor.toColorFilter),
            ),
            const CustomDivider(indent: 0),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'email'.tr(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Text('Sarrdeh@gmail.com',
                  style: Theme.of(context).textTheme.bodySmall),
              trailing: Text("edit".tr(),
                  style: primary14W400.copyWith(
                      color: Theme.of(context).primaryColor,

                      height: 0, decoration: TextDecoration.underline)),
              leading: SvgPicture.asset(AppIcons.profileInfo,
                  colorFilter: Theme.of(context).primaryColor.toColorFilter),
            ),
            const CustomDivider(indent: 0),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('phone number'.tr(),
                  style: Theme.of(context).textTheme.bodyMedium),
              subtitle: Text('+963255888000',
                  style: Theme.of(context).textTheme.bodySmall),
              trailing: Text("edit".tr(),
                  style: primary14W400.copyWith(
                    color: Theme.of(context).primaryColor,
                      height: 0, decoration: TextDecoration.underline)),
              leading: SvgPicture.asset(AppIcons.profileInfo,
                  colorFilter: Theme.of(context).primaryColor.toColorFilter),
            ),
            const CustomDivider(indent: 0),
          ],
        ),
      ),
    ));
  }
}
