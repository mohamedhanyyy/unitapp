import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import '../../../../shared/resources/colors.dart';
class HomeScrren extends StatefulWidget {
  const HomeScrren({super.key});

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {

  int _selectedItemPosition=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SnakeNavigationBar.color(
        // behaviour: snakeBarStyle,
        // snakeShape: snakeShape,
        // shape: BottomBar,
        // padding: padding,

        ///configuration for SnakeNavigationBar.color
        // snakeViewColor: selectedColor,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.blueGrey,
        snakeShape: SnakeShape.indicator,
        ///configuration for SnakeNavigationBar.gradient
        //snakeViewGradient: selectedGradient,
        //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
        //unselectedItemGradient: unselectedGradient,

        showUnselectedLabels: true,
        showSelectedLabels: true,

        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
    items: const [
    BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'tickets'),
    BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'calendar'),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
    BottomNavigationBarItem(icon: Icon(Icons.podcasts), label: 'microphone'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search')
    ],
    ));
  }
}
