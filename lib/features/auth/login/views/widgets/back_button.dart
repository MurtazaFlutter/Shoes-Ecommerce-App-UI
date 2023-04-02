import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/constants.dart';

class AppBarButton extends StatelessWidget {
  final String svg;
  final VoidCallback onTapButton;
  const AppBarButton({
    required this.svg,
    required this.onTapButton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapButton,
      child: Container(
        height: 44.h,
        width: 44.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: kWhiteColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(15.r),
          child: SvgPicture.asset(
            svg,
          ),
        ),
      ),
    );
  }
}
