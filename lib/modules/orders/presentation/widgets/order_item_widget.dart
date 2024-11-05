import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit/core/extensions/context_extension.dart';
import 'package:unit/core/resources/colors.dart';
import 'package:unit/core/resources/images.dart';
import 'package:unit/modules/orders/presentation/screens/order_details_screen.dart';
import 'package:unit/services/navigation/navigation.dart';
import 'package:unit/shared/widgets/custom_button.dart';

import '../../../../core/resources/icons.dart';
import '../../../../core/resources/styles.dart';

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigation.navigate(const OrderDetailsScreen());
      },
      child: Card(
        elevation: 0,
        color: Theme.of(context).scaffoldBackgroundColor,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: AppColors.grey)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8, top: 4),
                          child:
                              Text("${'unit'.tr()} 21", style: Theme.of(context).textTheme.bodySmall),
                        ),
                          Text("60.000 SAR", style: Theme.of(context).textTheme.bodySmall),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SvgPicture.asset(AppIcons.estate),
                              const SizedBox(width: 5),
                                Flexible(
                                child: Text('الرياض -حي الصفا', style: Theme.of(context).textTheme.bodySmall),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: FittedBox(
                            child: Row(
                              children: [
                                Text('send order date'.tr(),
                                    style: Theme.of(context).textTheme.bodySmall),
                                const SizedBox(width: 5),
                                  Text('31-06-2024',
                                    style: Theme.of(context).textTheme.bodySmall),
                              ],
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Row(
                            children: [
                              Text('tour date:'.tr(), style: Theme.of(context).textTheme.bodySmall),
                              const SizedBox(width: 5),
                                Text('31-06-2024', style: Theme.of(context).textTheme.bodySmall),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 0,
                    color: AppColors.lightPurple,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      child: Text('verified date'.tr(), style: blue8w400),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Flexible(
                    child: CustomElevatedButton(
                      height: 40,
                      color: Theme.of(context).secondaryHeaderColor,
                      borderColor: Theme.of(context).primaryColor,

                      borderRadius: 8,
                      onTap: () {},
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppIcons.call,colorFilter: Theme.of(context).primaryColor.toColorFilter),
                          const SizedBox(width: 10),
                          Text("phone".tr(), style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Flexible(
                    child: CustomElevatedButton(
                      color: Theme.of(context).secondaryHeaderColor,
                      borderColor: Theme.of(context).primaryColor,
                      height: 40,
                      borderRadius: 8,
                      onTap: () {},
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppIcons.whatsapp,colorFilter: Theme.of(context).primaryColor.toColorFilter,),
                          const SizedBox(width: 10),
                          Text("whatsapp".tr(), style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
