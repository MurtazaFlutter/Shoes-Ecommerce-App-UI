import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../constants/constants.dart';

class WelcomeText extends StatelessWidget {
  final String title1;
  final String title2;
  const WelcomeText({
    super.key,
    required this.title1,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(title1,
              textAlign: TextAlign.center,
              style: kRegular.copyWith(
                fontSize: 28.h,
                color: kDarkGrey,
              )),
          Gap(4.h),
          Text(title2,
              textAlign: TextAlign.center,
              style: kLight.copyWith(
                fontSize: 16.h,
                color: kGreyColor,
              )),
        ],
      ),
    );
  }
}
