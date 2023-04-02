import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:shoes_ecommerce_app/features/auth/login/views/login_screen.dart';
import '../../../../common/custom_text_feld.dart';
import '../../../../common/default_button.dart';
import '../../../../common/validator.dart';
import '../../login/views/widgets/back_button.dart';
import '../../login/views/widgets/welcome_text.dart';
import '../../widgets/google_auth_button.dart';
import '../../widgets/select_account.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 20.h,
            ),
            child: Form(
              key: ValidatorMethods.signUpFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarButton(
                    svg: 'lib/assets/icons/back.svg',
                    onTapButton: () {
                      Navigator.pop(context);
                    },
                  ),
                  Gap(32.h),
                  const WelcomeText(
                    title1: 'Create Account',
                    title2: 'Let\'s Create Account Together',
                  ),
                  Gap(50.h),
                  CustomTextField(
                    textInputType: TextInputType.emailAddress,
                    controller: ValidatorMethods.fullNamecontroller,
                    hintText: 'Ghulam Murtaza',
                    labelText: 'Full Name',
                    validator: (value) {
                      return ValidatorMethods().validateFullName(value);
                    },
                  ),
                  Gap(30.h),
                  CustomTextField(
                    textInputType: TextInputType.emailAddress,
                    controller: ValidatorMethods.emailController2,
                    hintText: 'example@gmail.com',
                    labelText: 'Email Address',
                    validator: (value) {
                      return ValidatorMethods().validateEmail(value);
                    },
                  ),
                  Gap(30.h),
                  CustomTextField(
                    textInputType: TextInputType.visiblePassword,
                    obSecureText: true,
                    controller: ValidatorMethods.passwordController,
                    hintText: '********',
                    labelText: 'Password',
                    validator: (value) {
                      return ValidatorMethods().validatePassword(value);
                    },
                  ),
                  Gap(10.h),
                  Gap(30.h),
                  DefaultButton(
                    height: 54.h,
                    width: 335.w,
                    buttonTitle: 'Sign Up',
                    onTap: () {
                      ValidatorMethods.signUpFormSubmit(context);
                    },
                  ),
                  Gap(30.h),
                  GoogleAuthButton(
                    onTap: () {},
                  ),
                  Gap(36.h),
                  SelectAccount(
                    title1: 'Already Have An Account? ',
                    title2: 'Sign In',
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const LoginScreen())),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
