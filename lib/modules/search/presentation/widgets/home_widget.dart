import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit/core/resources/images.dart';
import 'package:unit/modules/orders/presentation/screens/order_details_screen.dart';
import 'package:unit/services/navigation/navigation.dart';
import 'package:unit/shared/widgets/house_info.dart';

import '../../../../core/resources/icons.dart';
import '../../../../core/resources/styles.dart';

class LocationDetailsWidget extends StatelessWidget {
  const LocationDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GestureDetector(
        onTap: () {
          AppNavigation.navigate(const OrderDetailsScreen());
        },
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        AppImages.house,
                        width: 116,
                        height: 119,
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8, top: 4),
                          child:
                              Text("${'unit'.tr()} 21", style: lightGrey12W700),
                        ),
                        const Text("60.000 SAR", style: lightGrey13W700),
                        const HouseInfo(
                            laddar: 3, bathroom: 3, square: 3, bedroom: 3),


                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(AppIcons.estate),
                    const SizedBox(width: 5),
                    const Flexible(
                      child: Text('الرياض -حي الصفا',
                          style: greyText11W400),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
