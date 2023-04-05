import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/constants.dart';

class ProductType extends StatelessWidget {
  final String title1;
  final String title2;
  const ProductType({
    super.key,
    required this.title1,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title1,
          style: kRegular.copyWith(fontSize: 16.h, color: kDarkGrey),
        ),
        Text(
          title2,
          style: kLight.copyWith(fontSize: 13.h, color: kDefaultColor),
        ),
      ],
    );
  }
}
