import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/resources/colors.dart';
import '../../../../core/resources/icons.dart';
import '../../../../core/resources/styles.dart';
import '../../../../shared/widgets/custom_text_field.dart';
import '../cubit/category_cubit.dart';

class HomeCategoryWidget extends StatelessWidget {
  final controller = TextEditingController();
  final catList = ['Dublex', 'Homes', 'Villas', 'Town house'];

  HomeCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoryCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                children: [
                  SvgPicture.asset(AppIcons.menuHome),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(start: 5, end: 10),
                    child: Text(
                      "menu".tr(),
                      style: lightGrey12W400,
                    ),
                  ),
                  Flexible(
                    child: CustomTextField(
                      fillColor: AppColors.greyTextField,
                      hintFontSize: 11,
                      hintColor: AppColors.getGreyTextColor,
                      borderRadius: 20,
                      controller: controller,
                      hintText: 'City, property type, project name',
                      prefixIcon: AppIcons.homeSearch,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 7),
            BlocBuilder<CategoryCubit, int>(
              builder: (context, selectedCatIndex) {
                return SizedBox(
                  height: 38,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: catList.map((e) {
                      final index = catList.indexOf(e);
                      final isSelected = index == selectedCatIndex;

                      return GestureDetector(
                        onTap: () {
                          context.read<CategoryCubit>().selectCategory(index);
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 105,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.lightGreenColor
                                : AppColors.greyTextField,
                            borderRadius: BorderRadius.circular(34),
                            border: Border.all(color: AppColors.greyTextField),
                          ),
                          child: Center(
                            child: Text(
                              e.tr(),
                              style: TextStyle(
                                color: isSelected
                                    ? AppColors.whiteColor
                                    : AppColors.blackColor,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
