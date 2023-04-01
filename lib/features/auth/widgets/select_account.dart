import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class SelectAccount extends StatelessWidget {
  final VoidCallback onTap;
  final String title1;
  final String title2;
  const SelectAccount({
    super.key,
    required this.onTap,
    required this.title1,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title1,
            style: kLight.copyWith(fontSize: 12.h, color: kGreyColor),
          ),
          Text(
            title2,
            style: kLight.copyWith(fontSize: 12.h, color: kDarkGrey),
          ),
        ],
      ),
    );
  }
}
