import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/constants.dart';

class GoogleAuthButton extends StatelessWidget {
  final VoidCallback onTap;
  const GoogleAuthButton({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 54.h,
        width: 335.w,
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(50.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sign in with google',
              style: kRegular.copyWith(fontSize: 18.h, color: kDarkGrey),
            )
          ],
        ),
      ),
    );
  }
}
