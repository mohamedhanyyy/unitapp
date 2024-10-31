import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../shared/widgets/custom_appbar.dart';

class AboutUnitState extends StatelessWidget {
  const AboutUnitState({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 46),
            child: CustomAppbar('about real estate unit')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "real estate unit".tr(),
                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
              const Text(
                "معلوماتك الشخصية مسندة من منصة نافذ يتم استخدامها فقط للتأكد من صحة الحساب الخاص بك.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color(0xff686868)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
