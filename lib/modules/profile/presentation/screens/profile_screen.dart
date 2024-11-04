import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                  fontSize: 10,
                  color: Color(0xff686868)),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'full name',
                style: black14W400,
              ),
              subtitle: const Text('شركة سردة', style: black14W400),
              trailing: Text("edit".tr(),
                  style: primary14W400.copyWith(
                      height: 0, decoration: TextDecoration.underline)),
              leading: SvgPicture.asset(AppIcons.profileInfo),
            ),
            const CustomDivider(indent: 0),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'الرقم الوطني',
                style: black14W400,
              ),
              subtitle: const Text('5552046300', style: black14W400),
              trailing: Text("edit".tr(),
                  style: primary14W400.copyWith(
                      height: 0, decoration: TextDecoration.underline)),
              leading: SvgPicture.asset(AppIcons.profileInfo),
            ),
            const CustomDivider(indent: 0),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('address'.tr(), style: black14W400),
              subtitle: const Text('شركة سردة', style: black14W400),
              trailing: Text("edit".tr(),
                  style: primary14W400.copyWith(
                      height: 0, decoration: TextDecoration.underline)),
              leading: SvgPicture.asset(AppIcons.profileInfo),
            ),
            const CustomDivider(indent: 0),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'email',
                style: black14W400,
              ),
              subtitle: const Text('Sarrdeh@gmail.com', style: black14W400),
              trailing: Text("edit".tr(),
                  style: primary14W400.copyWith(
                      height: 0, decoration: TextDecoration.underline)),
              leading: SvgPicture.asset(AppIcons.profileInfo),
            ),
            const CustomDivider(indent: 0),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('phone number'.tr(), style: black14W400),
              subtitle: const Text('+963255888000', style: black14W400),
              trailing: Text("edit".tr(),
                  style: primary14W400.copyWith(
                      height: 0, decoration: TextDecoration.underline)),
              leading: SvgPicture.asset(AppIcons.profileInfo),
            ),
            const CustomDivider(indent: 0),
          ],
        ),
      ),
    ));
  }
}
