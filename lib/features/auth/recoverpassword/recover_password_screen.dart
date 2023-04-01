import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../common/custom_text_feld.dart';
import '../../../common/default_button.dart';
import '../../../common/validator.dart';
import '../login/views/widgets/back_button.dart';
import '../login/views/widgets/welcome_text.dart';

class RecoverPasswordScreen extends StatelessWidget {
  const RecoverPasswordScreen({super.key});

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
              key: ValidatorMethods.recoverPasswordFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButtonWidget(
                    onTapButton: () {
                      Navigator.pop(context);
                    },
                  ),
                  Gap(32.h),
                  const WelcomeText(
                    title1: 'Recover Password',
                    title2:
                        'Please Enter Your Email Address To Recieve a Verification Code',
                  ),
                  Gap(50.h),
                  CustomTextField(
                    textInputType: TextInputType.emailAddress,
                    controller: ValidatorMethods.emailController3,
                    hintText: 'example@gmail.com',
                    labelText: 'Email Address',
                    validator: (value) {
                      return ValidatorMethods().validateEmail(value);
                    },
                  ),
                  Gap(40.h),
                  DefaultButton(
                    height: 54.h,
                    width: 335.w,
                    buttonTitle: 'Continue',
                    onTap: () {
                      ValidatorMethods.recoverPasswordSubmit(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
