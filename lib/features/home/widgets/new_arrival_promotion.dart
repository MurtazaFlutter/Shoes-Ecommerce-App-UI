import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../constants/constants.dart';

class NewArrivalPromotion extends StatelessWidget {
  const NewArrivalPromotion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 335.w,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BEST CHOICE',
                  style: kRegular.copyWith(
                    fontSize: 12.h,
                    color: kDefaultColor,
                  ),
                ),
                Gap(4.h),
                Text(
                  'Nike Air Jordan',
                  style: kRegular.copyWith(
                    fontSize: 20.h,
                    color: kDarkGrey,
                  ),
                ),
                Gap(10.h),
                Text(
                  '\$849.69',
                  style: kRegular.copyWith(
                    fontSize: 16.h,
                    color: kDarkGrey,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              'lib/assets/images/new.png',
            ),
          )
        ],
      ),
    );
  }
}
