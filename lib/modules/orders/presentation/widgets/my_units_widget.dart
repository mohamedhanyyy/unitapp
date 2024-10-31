import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/resources/colors.dart';
import '../../cubit/orders_cubit.dart';

class MyUnitsWidget extends StatefulWidget {
  const MyUnitsWidget({super.key});

  @override
  State<MyUnitsWidget> createState() => _MyUnitsWidgetState();
}

class _MyUnitsWidgetState extends State<MyUnitsWidget> {
  final ordersCubit = GetIt.instance.get<OrdersCubit>();

  int selectedIndex = 0;
  List<String> categories = ['الفلل', 'الدوبلكس', 'التاون هاوس'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                selectedIndex = index;
                setState(() {});
              },
              child: Container(
                width: 105,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? AppColors.lightGreenColor
                        : AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(34),
                    border: Border.all(color: AppColors.grey)),
                child: Center(
                  child: Text(
                    categories.elementAt(index),
                    style: TextStyle(
                      color: selectedIndex == index
                          ? AppColors.whiteColor
                          : AppColors.getGreyTextColor,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
