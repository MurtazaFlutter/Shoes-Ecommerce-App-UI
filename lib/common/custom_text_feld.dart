import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../constants/constants.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final String labelText;
  final bool obSecureText;
  final FormFieldValidator validator;
  final String hintText;

  const CustomTextField({
    super.key,
    required this.textInputType,
    required this.controller,
    required this.labelText,
    this.obSecureText = false,
    required this.validator,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: kRegular.copyWith(
            fontSize: 16.h,
            color: kDarkGrey,
          ),
        ),
        Gap(12.h),
        Container(
          height: 48.h,
          width: 335.w,
          decoration: BoxDecoration(
              color: kWhiteColor, borderRadius: BorderRadius.circular(50.r)),
          child: TextFormField(
            obscureText: obSecureText,
            style: kLight.copyWith(fontSize: 14.h, color: kDarkGrey),
            keyboardType: textInputType,
            validator: validator,
            controller: controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                top: 16.h,
                bottom: 14.h,
                left: 14.w,
              ),
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: kLight.copyWith(fontSize: 14.h, color: kDarkGrey),
            ),
          ),
        )
      ],
    );
  }
}
