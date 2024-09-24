import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final Color fillColor;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  final IconData ?prefixIcon;
  final IconData ?suffixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onSuffixIconTap;
  final bool isEnabled;
  final bool autoFocus;
  final TextInputAction textInputAction;

  const CustomTextField({
    super.key,
    required this.controller,
    this.labelText = '',
    this.hintText = '',
    this.fillColor = Colors.white,
    this.borderColor = Colors.grey,
    this.borderWidth = 2.0,
    this.borderRadius = 10.0,
    this.prefixIcon ,
    this.suffixIcon ,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validator,
    this.onChanged,
    this.onSuffixIconTap,
    this.isEnabled = true,
    this.autoFocus = false,
    this.textInputAction = TextInputAction.done,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      autofocus: autoFocus,
      enabled: isEnabled,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        fillColor: fillColor,
        filled: true,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: GestureDetector(
          onTap: onSuffixIconTap,
          child: Icon(suffixIcon),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor.withOpacity(0.7),
            width: borderWidth,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: borderWidth,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.redAccent,
            width: borderWidth,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
