import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
        height: 10.h,
        thickness: 1,
        endIndent: 10.w,
        indent: 10.w,
        color: Colors.grey.withOpacity(0.3));
  }
}
