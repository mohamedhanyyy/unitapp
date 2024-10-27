import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit/shared/widgets/custom_text_field.dart';

import '../../../../core/resources/colors.dart';
import '../../../../core/resources/icons.dart';
import '../../../../shared/widgets/custom_appbar.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({super.key});

  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 46),
            child: CustomAppbar('الإشعارات')),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 8),
                child: CustomTextField(
                  controller: controller,
                  hintText: 'بحث',
                  prefixIcon: AppIcons.homeSearch,
                  borderRadius: 20,

                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return buildNotificationWidget();
                },
                itemCount: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNotificationWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(AppIcons.radio),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  "ارسال طلب حجز جولة",
                  style: TextStyle(color: AppColors.lightBlue),
                ),
              ),
              SvgPicture.asset(AppIcons.dot),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Text("الان"),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 9, bottom: 4),
            child: Text(
              "الوحدة 21",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
          ),
          const Text(
            "تم ارسال طلب حجز موعدك بنجاح سيتم التواصل من قبل المسوق العقاري لتحديد موعد",
            style: TextStyle(
                color: Color(0xff686868),
                fontSize: 10,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
