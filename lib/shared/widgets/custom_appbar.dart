import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key,required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF9F7F7),
      ),
      child: Row(
        children: [
          // Text(text,style: ,)
        ],
      ),
    );
  }
}
