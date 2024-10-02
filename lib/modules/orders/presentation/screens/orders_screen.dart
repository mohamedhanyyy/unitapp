import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:unit/core/resources/styles.dart';
import 'package:unit/modules/orders/cubit/orders_cubit.dart';

import '../../../../core/resources/colors.dart';
import '../widgets/my_tour_request_widget.dart';
import '../widgets/my_units_widget.dart';

class OrdersScreen extends StatelessWidget {
  OrdersScreen({super.key});

  final ordersCubit = GetIt.instance.get<OrdersCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: BlocBuilder(
        bloc: ordersCubit,
        builder: (context, state) {
          return Column(children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              margin: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 20),
              height: 50.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: AppColors.grey)),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: ordersCubit.mainCatIndex == 1
                              ? AppColors.lightPurple
                              : AppColors.whiteColor),
                      onPressed: () {
                        ordersCubit.changeMainIndex(1);
                      },
                      child: Text(
                        "my tour requests".tr(),
                        style: ordersCubit.mainCatIndex == 1
                            ? primary12W400
                            : lightGrey12W400,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        ordersCubit.changeMainIndex(0);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: ordersCubit.mainCatIndex == 0
                              ? AppColors.lightPurple
                              : AppColors.whiteColor),
                      child: Text(
                        "my units".tr(),
                        style: ordersCubit.mainCatIndex == 0
                            ? primary12W400
                            : lightGrey12W400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (ordersCubit.mainCatIndex == 0)
              const MyUnitsWidget()
            else
              const MyTourRequestwidget()
          ]);
        },
      ),
    ));
  }
}
