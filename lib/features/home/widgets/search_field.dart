import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../constants/constants.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 335.w,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: TextFormField(
        cursorColor: kGreyColor,
        style: kLight.copyWith(fontSize: 14.h),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Looking for shoes',
          contentPadding: EdgeInsets.all(12.r),
          hintStyle: kLight.copyWith(fontSize: 14.h),
          prefixIcon: Icon(
            IconlyLight.search,
            color: kGreyColor,
            size: 20.h,
          ),
        ),
      ),
    );
  }
}
