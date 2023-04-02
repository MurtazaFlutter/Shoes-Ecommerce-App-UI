import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/constants.dart';

class SelectSize extends StatefulWidget {
  const SelectSize({super.key});

  @override
  State<SelectSize> createState() => _SelectSizeState();
}

class _SelectSizeState extends State<SelectSize> {
  int selectSize = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
            6,
            (index) => InkWell(
                  onTap: () {
                    setState(() {
                      selectSize = index;
                    });
                  },
                  child: Container(
                    height: 45.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                        color: selectSize == index
                            ? kDefaultColor
                            : kScaffoldColor,
                        shape: BoxShape.circle),
                    child: Center(
                      child: Text(
                        '38',
                        style: kLight.copyWith(
                          fontSize: 16.h,
                          color: selectSize == index ? kWhiteColor : kGreyColor,
                        ),
                      ),
                    ),
                  ),
                )),
      ],
    );
  }
}
