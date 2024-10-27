import 'package:flutter/material.dart';

import '../../../../shared/widgets/custom_appbar.dart';

class AboutUnitState extends StatelessWidget {
  const AboutUnitState({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 46),
            child: CustomAppbar('عن الوحدة العقارية')),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "الوحدة العقارية",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
              Text(
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
