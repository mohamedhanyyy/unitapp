import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unit/core/extensions/context_extension.dart';

import '../../../../core/resources/icons.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/house_info.dart';

class SavedItemWidget extends StatelessWidget {
  const SavedItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Theme.of(context).primaryColor),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                AppIcons.save,
                colorFilter: Theme.of(context).primaryColor.toColorFilter,
              )),
          Image.asset('assets/images/home.png'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${"unit".tr()} 21',
                  style: const TextStyle(fontWeight: FontWeight.w700)),
              const Text('وقت التسليم 31-06-2026',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12))
            ],
          ),
          const Text('60.000 SAR',
              style: TextStyle(fontWeight: FontWeight.w700)),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 12),
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.location,
                    colorFilter: Theme.of(context).primaryColor.toColorFilter),
                const SizedBox(width: 10),
                const Text('الرياض - حي الصفا'),
              ],
            ),
          ),
          const HouseInfo(laddar: 2, bathroom: 3, bedroom: 4, square: 800),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Flexible(
                  child: CustomElevatedButton(
                    onTap: () {},
                    buttonText: 'جولة افتراضية داخلية',
                    fontSize: 11,
                    fontColor: Theme.of(context).secondaryHeaderColor,
                    height: 40,
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: CustomElevatedButton(
                    height: 40,
                    onTap: () {},
                    buttonText: 'view details',
                    color: Theme.of(context).secondaryHeaderColor,
                    fontColor: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
