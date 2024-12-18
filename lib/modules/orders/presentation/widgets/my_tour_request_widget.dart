import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:unit/modules/orders/presentation/widgets/order_item_widget.dart';

import '../../../../core/resources/colors.dart';
import '../../cubit/orders_cubit.dart';

class MyTourRequestwidget extends StatefulWidget {
  const MyTourRequestwidget({super.key});

  @override
  State<MyTourRequestwidget> createState() => _MyTourRequestwidgetState();
}

class _MyTourRequestwidgetState extends State<MyTourRequestwidget> {
  final ordersCubit = GetIt.instance.get<OrdersCubit>();

  int selectedIndex = 0;
  List<String> categories = [
    'المواعيد المعلقة',
    'المواعيد المجدولة',
    'المواعيد المحققة'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          margin: const EdgeInsets.only(bottom: 8),
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
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? AppColors.lightGreenColor
                            : Theme.of(context).appBarTheme.backgroundColor,
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
        ),
        const OrderItemWidget(),
        const OrderItemWidget(),
      ],
    );
  }
}
