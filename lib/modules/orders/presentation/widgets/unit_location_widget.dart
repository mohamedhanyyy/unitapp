import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit/core/resources/colors.dart';
import 'package:unit/shared/widgets/custom_button.dart';

import '../../../../core/resources/icons.dart';
import '../../../../core/resources/images.dart';

class UnitLocationWidget extends StatelessWidget {
  const UnitLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("عرض علي الخريطة"),
          const SizedBox(height: 5),
          Row(
            children: [
              SvgPicture.asset(AppIcons.location),
              const SizedBox(width: 5),
              const Text("الرياض - حي الصفا")
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(AppImages.mapLocation,
                    fit: BoxFit.cover, width: double.infinity),
                CustomElevatedButton(
                  onTap: () {},
                  buttonText: 'موقع على الخريطة',
                  fontColor: AppColors.whiteColor,
                  color: AppColors.greenColor,
                  borderColor: AppColors.greenColor,
                  padding: 85,
                  borderRadius: 25,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
