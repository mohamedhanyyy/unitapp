import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BlueDivider extends StatelessWidget {
  const BlueDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 16),
      height: 11,
      color: const Color(0xffEDF1F5),
    );
  }
}


class CustomDivider extends StatelessWidget {

  const CustomDivider({super.key, this.indent = 10});
   final  double indent;

  @override
  Widget build(BuildContext context) {
    return Divider(
        height: 10.h,
        thickness: 1,
        endIndent: indent,
        indent: indent,
        color: Colors.grey.withOpacity(0.3));
  }
}
