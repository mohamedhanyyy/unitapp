import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/colors.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive()
    );
  }
}

class CustomLoadingButtonWidget extends StatelessWidget {
  const CustomLoadingButtonWidget({super.key, this.padding});
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 0),
      child: ElevatedButton(
        onPressed: () {
          return;
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(56.h),
          elevation: 0,
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: const CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
