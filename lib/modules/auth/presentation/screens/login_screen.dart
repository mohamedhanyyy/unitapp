import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:unit/modules/auth/cubit/login_cubit.dart';
import 'package:unit/shared/cubit/base_cubit_state.dart';
import 'package:unit/shared/extensions/context_extension.dart';
import 'package:unit/shared/extensions/string_extenstions.dart';
import 'package:unit/shared/widgets/custom_button.dart';
import 'package:unit/shared/widgets/custom_loading_widget.dart';
import 'package:unit/shared/widgets/custom_text_field.dart';

import '../../../../shared/resources/styles.dart';
import '../../../../shared/widgets/custom_pawword_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final loginCubit = GetIt.instance.get<LoginCubit>();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          padding: context.horizontalPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 67.h, bottom: 24.h),
                child: Center(
                    child: Image.asset('name', width: 153.w, height: 90.h)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text("full name".tr(), style: lightGrey13W400),
              ),
              CustomTextField(
                controller: loginCubit.nameController,
                hintText: 'full name',
                validator: (val) => val!.nameValidator(val),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 4),
                child: Text("password".tr(), style: lightGrey13W400),
              ),
              CustomPasswordTextField(
                controller: loginCubit.passwordController,
                hintText: 'password',
                validator: (val) => val!.passwordValidator(val),
               ),
              Padding(
                padding: EdgeInsets.only(top: 41.h, bottom: 16.h),
                child: BlocBuilder<LoginCubit, BaseCubitState>(
                  builder: (context, state) {
                    if (state == BaseCubitState.loading) {
                      return const CustomLoadingButtonWidget();
                    }
                    return CustomElevatedButton(
                        onTap: () {
                          if (formKey.currentState!.validate()) {}
                        },
                        buttonText: 'login');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
