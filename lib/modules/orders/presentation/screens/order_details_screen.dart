import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/resources/icons.dart';
import '../../../../shared/widgets/house_info.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                    Text(
                      "SAR 60.000",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
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
            child: HouseInfo(laddar: 2,bathroom: 3,bedroom: 4,square: 800),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8,bottom: 16),
            height: 11,
            color: const Color(0xffEDF1F5),
          )
        ],
      ),
    );
  }
}
