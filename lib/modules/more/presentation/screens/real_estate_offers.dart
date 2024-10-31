import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit/core/resources/images.dart';
import 'package:unit/core/resources/styles.dart';
import 'package:unit/shared/widgets/custom_button.dart';

import '../../../../core/resources/icons.dart';
import '../../../../shared/widgets/custom_appbar.dart';

class RealEstateOffers extends StatelessWidget {
  const RealEstateOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 46),
            child: CustomAppbar('real estate offers')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                "real estate offers".tr(),
                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
              const Text(
                "يمكنك معرفة عروض المقدمة لك من خلال الوحدة العقارية بتحميل الملف المسند ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color(0xff686868)),
              ),
              ListView(
                shrinkWrap: true,
                children: const [
                  OfferCard(
                    date: '2025-5-12',
                    companyName: 'شركة حمادة',
                    description: 'توصيف العرض المقدم من شركة حمادة...',
                    labels: ['خصم مالي', 'عرض أجهزة'],
                  ),
                  SizedBox(height: 16),
                  OfferCard(
                    date: '2025-5-12',
                    companyName: 'شركة حمادة',
                    description: 'توصيف العرض المقدم من شركة حمادة...',
                    labels: ['خصم مالي', 'عرض أجهزة'],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final String date;
  final String companyName;
  final String description;
  final List<String> labels;

  const OfferCard({
    super.key,
    required this.date,
    required this.companyName,
    required this.description,
    required this.labels,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppImages.offerLogo),
                const SizedBox(width: 11),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      companyName,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    const SizedBox(height: 4),
                    const Text('Text label',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                  ],
                ),
                const Spacer(),
                Text(
                  'حتى: $date',
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const SizedBox(height: 8),
            Wrap(
              spacing: 4,
              children: labels
                  .map((label) => Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        color: label == 'خصم مالي'
                            ? Colors.red[100]
                            : Colors.blue[100],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: Text(label),
                        ),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 8),
            Text(description, style: const TextStyle(color: Colors.grey)),
            const Divider(height: 24),
            Align(
              alignment: Alignment.center,
              child: CustomElevatedButton(
                color: Colors.white,
                onTap: () {},
                // buttonText: 'download offer',
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcons.download),
                    const SizedBox(width: 10),
                      Text("download offer".tr(), style: black10W400),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
