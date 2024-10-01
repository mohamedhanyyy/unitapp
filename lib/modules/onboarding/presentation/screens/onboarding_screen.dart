import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/colors.dart';
// import '../../../../shared/resources/colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('name'),
          Text("search in".tr()),
          ListView.builder(itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                index = 1;
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 14.h),
                width: double.infinity,
                height: 48.h,
                decoration: BoxDecoration(
                  color: index == this.index
                      ? AppColors.lightGreenColor
                      : AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: index == this.index
                          ? AppColors.greenColor
                          : AppColors.borderColor),
                ),
                child: const Text("الرياض"),
              ),
            );
          })
        ],
      ),
    );
  }
}
