import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
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
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color:
                                      Theme.of(context).secondaryHeaderColor),
                          elevation: 0,
                          backgroundColor: ordersCubit.mainCatIndex == 1
                              ? AppColors.lightPurple
                              : Theme.of(context).secondaryHeaderColor),
                      onPressed: () {
                        ordersCubit.changeMainIndex(1);
                      },
                      child: Text(
                        "my tour requests".tr(),
                        style: ordersCubit.mainCatIndex == 1
                            ? Theme.of(context).textTheme.bodySmall?.copyWith(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor)
                            : Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).primaryColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  // const SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        ordersCubit.changeMainIndex(0);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          textStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color:
                                      Theme.of(context).secondaryHeaderColor),
                          backgroundColor: ordersCubit.mainCatIndex == 0
                              ? AppColors.lightPurple
                              : Theme.of(context).secondaryHeaderColor),
                      child: Text(
                        "my units".tr(),
                        style: ordersCubit.mainCatIndex == 0
                            ? Theme.of(context).textTheme.bodySmall?.copyWith(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor)
                            : Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).primaryColor),
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
