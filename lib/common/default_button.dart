import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constants.dart';

// ignore: must_be_immutable
class DefaultButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonTitle;
  double height;
  double width;
  DefaultButton(
      {super.key,
      required this.onTap,
      required this.buttonTitle,
      this.height = 54,
      this.width = 335});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: kDefaultColor,
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Center(
            child: Text(
          buttonTitle,
          style: kRegular.copyWith(
            color: kWhiteColor,
            fontSize: 18.h,
          ),
        )),
      ),
    );
  }
}
