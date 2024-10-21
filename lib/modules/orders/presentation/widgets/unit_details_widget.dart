import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit/core/resources/styles.dart';

import '../../../../core/resources/colors.dart';
import '../../../../core/resources/icons.dart';
import '../../../../shared/widgets/custom_divider.dart';

class UnitDetailsWidget extends StatelessWidget {
  const UnitDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderColor),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("معلومات الوحدة".tr(), style: black14W400),
              buildRow(AppIcons.city, "المدينة", "الرياض"),
              buildRow(AppIcons.unitStatus, "حالة العقار", "Off-Plan"),
              buildRow(AppIcons.laddar, "الأدوار", "5"),
              buildRow(AppIcons.bedroom, "غرف النوم", "4+خادمة"),
              buildRow(AppIcons.bathroom, "الحمامات", "5"),
              buildRow(AppIcons.square, "مساحة", "800sqFt."),
              buildRow(AppIcons.date, "تاريخ التسليم", "06-10-2026"),
            ],
          ),
        ),
        const BlueDivider(),
      ],
    );
  }

  buildRow(String icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SizedBox(
            width: 135,
            child: Row(
              children: [
                SvgPicture.asset(icon),
                const SizedBox(width: 5),
                Text(title),
              ],
            ),
          ),
          Text(value)
        ],
      ),
    );
  }
}
