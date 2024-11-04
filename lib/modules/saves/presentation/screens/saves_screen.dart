import 'package:flutter/material.dart';
import 'package:unit/modules/saves/presentation/widgets/saved_item_widget.dart';
import 'package:unit/shared/widgets/custom_text_field.dart';

import '../../../../core/resources/icons.dart';

class SavesScreen extends StatefulWidget {
  const SavesScreen({super.key});

  @override
  State<SavesScreen> createState() => _SavesScreenState();
}

class _SavesScreenState extends State<SavesScreen> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 23),
                child: CustomTextField(
                  hintColor: const Color(0xffA6A9AC),
                  controller: controller,
                  hintFontSize: 11,
                  textInputAction: TextInputAction.search,
                  // fillColor: AppColors.greyTextField,
                  borderRadius: 24,
                  hintText: 'المدينة, نوع العقار, اسم المشروع',
                  prefixIcon: AppIcons.estate,
                ),
              ),
              const SavedItemWidget(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: SavedItemWidget(),
              ),
              const SavedItemWidget(),

            ],
          ),
        ),
      ),
    );
  }
}
