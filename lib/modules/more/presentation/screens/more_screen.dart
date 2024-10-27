import 'package:flutter/material.dart';
import 'package:unit/core/resources/images.dart';
import 'package:unit/modules/more/presentation/screens/contact_us_screen.dart';
import 'package:unit/modules/more/presentation/screens/real_estate_offers.dart';
import 'package:unit/modules/more/presentation/widgets/profile_item_widget.dart';

import '../../../../core/resources/icons.dart';
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
              name: 'notifications', icon: AppIcons.alarm, page: NotificationsScreen()),
          const ProfileItemWidget(
              name: 'profile', icon: AppIcons.profile, page: Text("")),
          const ProfileItemWidget(
              name: 'about real estate unit',
              icon: AppIcons.estate,
              page: Text("")),
          const ProfileItemWidget(
              name: 'about real estate offers',
              icon: AppIcons.star,
              page: RealEstateOffers()),
          const ProfileItemWidget(
              name: 'privacy policy usage', icon: AppIcons.ask, page: Text("")),
          const ProfileItemWidget(
              name: 'apperance', icon: AppIcons.apperance, page: Text("")),
          const ProfileItemWidget(
              name: 'language', icon: AppIcons.lang, page: Text("")),
            ProfileItemWidget(
              name: 'contact us', icon: AppIcons.policy, page:ContactUsScreen()),
        ],
      ),
    );
  }
}
