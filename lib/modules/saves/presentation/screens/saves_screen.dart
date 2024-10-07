import 'package:flutter/material.dart';
import 'package:unit/shared/widgets/custom_text_field.dart';

import '../../../../core/resources/colors.dart';
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 23, right: 20, left: 20),
              child: CustomTextField(
                hintColor: const Color(0xffA6A9AC),
                controller: controller,
                hintFontSize: 11,
                textInputAction: TextInputAction.search,
                fillColor: AppColors.greyTextField,
                borderRadius: 24,
                hintText: 'المدينة, نوع العقار, اسم المشروع',
                prefixIcon: AppIcons.estate,
              ),
            ),
            const Card(
              elevation: 0,

              child: Column(
                children: [

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
