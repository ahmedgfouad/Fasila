import 'package:fasila/core/widgets/custom_text_field_widget.dart';
import 'package:fasila/core/widgets/custom_textformfield_widget.dart';
import 'package:fasila/features/auth/presentation/manager/password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupFieldsSectionWidget extends StatelessWidget {
  const SignupFieldsSectionWidget({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFieldWidget(hintText: 'Name', controller: nameController),
        const SizedBox(height: 16),
        CustomTextFieldWidget(hintText: 'Email', controller: emailController),
        const SizedBox(height: 16),
        BlocProvider(
          create: (context) => PasswordVisibilityCubit(),
          child: CustomTextFormFieldWidget(
            hintText: 'Password',
            controller: passwordController,
          ),
        ),
        const SizedBox(height: 16),
        BlocProvider(
          create: (context) => PasswordVisibilityCubit(),
          child: CustomTextFormFieldWidget(
            hintText: 'Confirm Password',
            controller: confirmPasswordController,
          ),
        ),
      ],
    );
  }
}
