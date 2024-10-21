import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit/core/resources/styles.dart';
import '../../../../core/resources/colors.dart';
import '../../../../core/resources/icons.dart';
import '../../../../shared/widgets/custom_divider.dart';
import '../../../../shared/widgets/house_info.dart';
import '../widgets/unit_details_widget.dart';
import '../widgets/unit_financial_details_widget.dart';
import '../widgets/unit_location_widget.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  int selectedIndex = 0;
  final list = ['معلومات الوحدة', 'الموقع', 'البيانات المالية'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/room.png',
                fit: BoxFit.fill, width: double.infinity),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "21 وحدة",
                        style:
                            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                      ),
                      Text(
                        "SAR 60.000",
                        style:
                            TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SvgPicture.asset(AppIcons.details1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: SvgPicture.asset(AppIcons.details2),
                  ),
        
                  SvgPicture.asset(AppIcons.details3),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: HouseInfo(laddar: 2, bathroom: 3, bedroom: 4, square: 800),
            ),
            BlueDivider(),
            Container(
              height: 35,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 24),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      selectedIndex = index;
                      setState(() {});
                    },
                    child: Container(
                      constraints: const BoxConstraints(minWidth: 105),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(34),
                          color: selectedIndex == index
                              ? AppColors.lightGreenColor
                              : AppColors.whiteColor,
                          border: Border.all(color: AppColors.borderColor)),
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Center(
                        child: Text(
                          list[index],
                          style: selectedIndex == index
                              ? const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.whiteColor,
                                  fontSize: 10,
                                )
                              : black10W400,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: list.length,
              ),
            ),
            if (selectedIndex == 0)
              UnitDetailsWidget()
            else if (selectedIndex == 1)
              UnitLocationWidget()
            else if (selectedIndex == 2)
              UnitFinancialDetailsWidget()
          ],
        ),
      ),
    );
  }
}
