import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      onTap: (){
        AppNavigation.navigate(page);
      },
      child: Column(
        children: [
          ListTile(
            leading: SvgPicture.asset(icon),
            title: Text(
              name.tr(),
              style:
                  const TextStyle(color: AppColors.greyProfileText, fontSize: 14),
            ),
            trailing: SvgPicture.asset(AppIcons.profileArrow),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomDivider(),
          ),
        ],
      ),
    );
  }
}
