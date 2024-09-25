import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/colors.dart';
import '../resources/styles.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Color fillColor;
  final Color borderColor;
  final String? prefixIcon;
  final String? suffixIcon;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextInputAction textInputAction;

  const CustomTextField({
    super.key,
    required this.controller,
    this.hintText,
    this.fillColor = Colors.white,
    this.borderColor = AppColors.borderColor,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
    this.textInputAction = TextInputAction.done,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        hintText: hintText?.tr(),
        contentPadding: EdgeInsets.zero,
        hintStyle: lightGrey15W400,
        labelStyle: lightGrey15W400,
        fillColor: fillColor,
        prefixIconConstraints: const BoxConstraints(),
        filled: true,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SvgPicture.asset('assets/icons/$prefixIcon.svg'),
              )
            : const SizedBox(width: 10),
        suffixIcon: suffixIcon != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SvgPicture.asset('assets/icons/$suffixIcon.svg'),
              )
            : const SizedBox(width: 10),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(6)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor.withOpacity(0.7)),
            borderRadius: BorderRadius.circular(6)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(6)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.redAccent),
            borderRadius: BorderRadius.circular(6)),
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
