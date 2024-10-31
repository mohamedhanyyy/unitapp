import 'package:flutter/material.dart';
import 'package:unit/core/resources/images.dart';
import 'package:unit/modules/more/presentation/screens/contact_us_screen.dart';
import 'package:unit/modules/more/presentation/screens/privacy_screen.dart';
import 'package:unit/modules/more/presentation/screens/real_estate_offers.dart';
import 'package:unit/modules/more/presentation/widgets/profile_item_widget.dart';
import 'package:unit/modules/more/presentation/widgets/theme_widget.dart';
import 'package:unit/modules/profile/presentation/screens/profile_screen.dart';

import '../../../../core/resources/icons.dart';
import '../widgets/language_widget.dart';
import 'about_unit_state.dart';
import 'notifications_screen.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(AppImages.cover,
              fit: BoxFit.fill, width: double.infinity),
          const SizedBox(height: 15),
          ProfileItemWidget(
              name: 'notifications',
              icon: AppIcons.alarm,
              page: NotificationsScreen()),
          const ProfileItemWidget(
              name: 'profile', icon: AppIcons.profile, page: ProfileScreen()),
          const ProfileItemWidget(
              name: 'about real estate unit',
              icon: AppIcons.estate,
              page: AboutUnitState()),
          const ProfileItemWidget(
              name: 'about real estate offers',
              icon: AppIcons.star,
              page: RealEstateOffers()),
          const ProfileItemWidget(
              name: 'privacy policy usage',
              icon: AppIcons.ask,
              page: PrivacyScreen()),
          const ProfileBottomSheetWidget(
              name: 'apperance', icon: AppIcons.apperance, page: ThemeWidget()),
          const ProfileBottomSheetWidget(
              name: 'language', icon: AppIcons.lang, page: LanguageWidget()),
          ProfileItemWidget(
              name: 'contact us',
              icon: AppIcons.policy,
              page: ContactUsScreen()),
        ],
      ),
    );
  }
}
