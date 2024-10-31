import 'package:easy_localization/easy_localization.dart';
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
            child: CustomAppbar('contact us')),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 8),
                child: Text(
                  "have a question?".tr(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
                Text("Contact us to answer any questions".tr()),
                Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 6),
                child: Text('full name'.tr()),
              ),
              CustomTextField(controller: nameController),
                Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 6),
                child: Text('email'.tr()),
              ),
              CustomTextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
                Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 6),
                child: Text('phone'.tr()),
              ),
              CustomTextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone),
                Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 6),
                child: Text('your message'.tr()),
              ),
              CustomTextField(controller: messageController, maxLines: 4),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: CustomElevatedButton(
                  onTap: () {},
                  buttonText: 'send',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
