import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unit/modules/auth/cubit/login_cubit.dart';
import 'package:unit/shared/cubit/base_cubit_state.dart';
import 'package:unit/shared/widgets/custom_button.dart';
import 'package:unit/shared/widgets/custom_loading_widget.dart';
import 'package:unit/shared/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(controller: TextEditingController()),
            CustomTextField(controller: TextEditingController()),
            BlocProvider<LoginCubit>(
              create: (context) => LoginCubit(),
              child: BlocBuilder<LoginCubit, BaseCubitState>(
                builder: (context, state) {
                  if (state == BaseCubitState.loading) {
                    return const CustomLoadingButtonWidget();
                  }
                  return CustomElevatedButton(
                      onTap: () {}, buttonText: 'Login');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
