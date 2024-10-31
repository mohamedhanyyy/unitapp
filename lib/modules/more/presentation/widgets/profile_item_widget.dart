import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit/core/extensions/context_extension.dart';
import 'package:unit/services/navigation/navigation.dart';
import 'package:unit/shared/widgets/custom_divider.dart';

import '../../../../core/resources/colors.dart';
import '../../../../core/resources/icons.dart';

class ProfileItemWidget extends StatelessWidget {
  const ProfileItemWidget(
      {super.key, required this.name, required this.icon, required this.page});

  final String name;
  final String icon;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigation.navigate(page);
      },
      child: Column(
        children: [
          ListTile(
            leading: SvgPicture.asset(icon,color: AppColors.getBackgroundColor,),
            title: Text(
              name.tr(),
              style:   TextStyle(
                  color: AppColors.getGreyTextColor, fontSize: 14),
            ),
            trailing: RotatedBox(
                quarterTurns: context.isCurrentEnglish ? 2 : 0,
                child: SvgPicture.asset(AppIcons.profileArrow,
                color: AppColors.getBackgroundColor,)),
          ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomDivider(),
          ),
        ],
      ),
    );
  }
}

class ProfileBottomSheetWidget extends StatelessWidget {
  const ProfileBottomSheetWidget(
      {super.key, required this.name, required this.icon, required this.page});

  final String name;
  final String icon;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => page,
          isScrollControlled: true,
          isDismissible: true,
          showDragHandle: true,
        );
      },
      child: Column(
        children: [
          ListTile(

            leading: SvgPicture.asset(icon,color: AppColors.getBackgroundColor,),
            title: Text(
              name.tr(),
              style:   TextStyle(
                  color: AppColors.getGreyTextColor, fontSize: 14),
            ),
            trailing: RotatedBox(
                quarterTurns: context.isCurrentEnglish ? 2 : 0,
                child: SvgPicture.asset(AppIcons.profileArrow,color: AppColors.getBackgroundColor,)),
          ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomDivider(),
          ),
        ],
      ),
    );
  }
}
