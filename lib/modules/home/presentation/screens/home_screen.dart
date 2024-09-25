import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:unit/modules/more/presentation/screens/more_screen.dart';
import 'package:unit/modules/orders/presentation/screens/orders_screen.dart';
import 'package:unit/modules/saves/presentation/screens/saves_screen.dart';
import 'package:unit/modules/search/presentation/screens/search_screen.dart';

import '../../../../shared/resources/colors.dart';

class HomeScrren extends StatefulWidget {
  const HomeScrren({super.key});

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  int _selectedItem = 0;

  final List<Widget> _pages = [
    const SearchScreen(),
    const OrdersScreen(),
    const SavesScreen(),

    const MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages.elementAt(_selectedItem),
        bottomNavigationBar: SnakeNavigationBar.color(
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.blueGrey,
          snakeShape: SnakeShape.indicator,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: _selectedItem,
          onTap: (index) => setState(() => _selectedItem = index),
          items:   [
            BottomNavigationBarItem(icon: const Icon(Icons.search), label: 'search'.tr()),
            BottomNavigationBarItem(
                icon: const Icon(Icons.book), label: 'orders'.tr()),
            BottomNavigationBarItem(icon: const Icon(Icons.savings), label: 'savings'.tr()),
            BottomNavigationBarItem(icon: const Icon(Icons.menu), label: 'more'.tr())
          ],
        ));
  }
}
