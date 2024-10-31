import 'package:flutter/material.dart';
import 'package:unit/modules/search/presentation/screens/map_screen.dart';

import '../widgets/home_category_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              HomeCategoryWidget(),
              const CustomMapMarkers(),
            ],
          ),
        ),
      ),
    );
  }
}
