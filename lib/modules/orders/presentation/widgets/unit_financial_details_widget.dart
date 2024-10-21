import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/colors.dart';
import '../../../../core/resources/icons.dart';
import '../../../../core/resources/styles.dart';
import '../../../../shared/widgets/custom_divider.dart';

class UnitFinancialDetailsWidget extends StatelessWidget {
  const UnitFinancialDetailsWidget({super.key});

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
              Text("البيانات المالية".tr(), style: black14W400),
              buildRow(AppIcons.unitPrice, "سعر الوحدة", "760.000.000 ر.س"),
              buildRow(AppIcons.aqarTax, "الضريية العقارية", "38.000.000 ر.س"),
              buildRow(AppIcons.saee, "السعي", "00.00 ر.س"),
              buildRow(AppIcons.saee, "ضريبة السعي", "760.000.000 ر.س"),
              buildRow(AppIcons.money, "المبلغ الاجمالي", "798.000.000 ر.س"),
            ],
          ),
        ),
        const BlueDivider(),
      ],
    );
  }
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
