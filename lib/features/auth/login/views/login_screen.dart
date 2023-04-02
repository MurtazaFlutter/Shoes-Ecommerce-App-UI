import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:shoes_ecommerce_app/constants/constants.dart';
import 'package:shoes_ecommerce_app/features/auth/register/views/register_screen.dart';
import '../../../../common/custom_text_feld.dart';
import '../../../../common/default_button.dart';
import '../../../../common/validator.dart';
import '../../recoverpassword/recover_password_screen.dart';
import '../../widgets/google_auth_button.dart';
import '../../widgets/select_account.dart';
import 'widgets/back_button.dart';
import 'widgets/welcome_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              key: ValidatorMethods.loginFormKey,
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
                    title1: 'Hello Again!',
                    title2: 'Welcome Back You\'ve Been Missed!',
                  ),
                  Gap(50.h),
                  CustomTextField(
                    textInputType: TextInputType.emailAddress,
                    controller: ValidatorMethods.emailController1,
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const RecoverPasswordScreen())));
                      },
                      child: Text(
                        'Recovery Password',
                        style: kLight.copyWith(
                          fontSize: 13.h,
                          color: kGreyColor,
                        ),
                      ),
                    ),
                  ),
                  Gap(30.h),
                  DefaultButton(
                    height: 54.h,
                    width: 335.w,
                    buttonTitle: 'Sign in',
                    onTap: () {
                      ValidatorMethods.loginFormSubmit(context);
                    },
                  ),
                  Gap(30.h),
                  GoogleAuthButton(
                    onTap: () {},
                  ),
                  Gap(118.h),
                  SelectAccount(
                      title1: 'Don\'t Have An Account? ',
                      title2: 'Sign Up For Free',
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const RegisterScreen())),
                          ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
