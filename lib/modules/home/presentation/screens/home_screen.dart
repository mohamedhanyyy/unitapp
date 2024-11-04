import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unit/core/extensions/context_extension.dart';
import 'package:unit/modules/more/presentation/screens/more_screen.dart';
import 'package:unit/modules/orders/presentation/screens/orders_screen.dart';
import 'package:unit/modules/saves/presentation/screens/saves_screen.dart';
import 'package:unit/modules/search/presentation/screens/search_screen.dart';

import '../../../../core/resources/colors.dart';
import '../../../../core/resources/icons.dart';

class HomeScrren extends StatefulWidget {
  const HomeScrren({super.key});

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  int _selectedItem = 0;

  final List<Widget> _pages = [
    const SearchScreen(),
    OrdersScreen(),
    const SavesScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages.elementAt(_selectedItem),
        bottomNavigationBar: SnakeNavigationBar.color(
          selectedItemColor: AppColors.getBottomNavigationBarColor,
          unselectedItemColor: AppColors.getBottomNavigationBarColor,
          snakeShape: SnakeShape.indicator,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          snakeViewColor: AppColors.getBottomNavigationBarColor,
          currentIndex: _selectedItem,
          onTap: (index) => setState(() => _selectedItem = index),
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.search,colorFilter: AppColors.getBottomNavigationBarColor.toColorFilter), label: 'search'.tr()),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                    colorFilter: AppColors.getBottomNavigationBarColor.toColorFilter,
                    _selectedItem == 1 ? AppIcons.orderOpen : AppIcons.orders),
                label: 'orders'.tr()),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                    _selectedItem == 2 ? AppIcons.save : AppIcons.savings,colorFilter: AppColors.getBottomNavigationBarColor.toColorFilter),
                label: 'savings'.tr()),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.menu,colorFilter: AppColors.getBottomNavigationBarColor.toColorFilter), label: 'more'.tr()),
          ],
        ));
  }
}
