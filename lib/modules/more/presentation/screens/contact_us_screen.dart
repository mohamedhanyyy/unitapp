import 'package:flutter/material.dart';
import 'package:unit/shared/widgets/custom_button.dart';
import 'package:unit/shared/widgets/custom_text_field.dart';

import '../../../../shared/widgets/custom_appbar.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 46),
            child: CustomAppbar('تواصل معنا')),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 24, bottom: 8),
                child: Text(
                  "لديك استفسار",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Text("تواصل معنا لاجابتك عأي استفسار."),
              const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 6),
                child: Text('الاسم الكامل'),
              ),
              CustomTextField(controller: nameController),
              const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 6),
                child: Text('البريد الالكتروني'),
              ),
              CustomTextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 6),
                child: Text('رقم الجوال'),
              ),
              CustomTextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone),
              const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 6),
                child: Text('رسالتك'),
              ),
              CustomTextField(controller: messageController, maxLines: 4),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: CustomElevatedButton(
                  onTap: () {},
                  buttonText: 'ارسال',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
