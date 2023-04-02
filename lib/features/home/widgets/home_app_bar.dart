import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';
import '../../auth/login/views/widgets/back_button.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBarButton(svg: 'lib/assets/icons/back.svg', onTapButton: () {}),
        Column(
          children: [
            Text(
              'Store location',
              style: kLight.copyWith(
                fontSize: 12.h,
                color: kGreyColor,
              ),
            ),
            Text(
              'Gulshan Iqbal, Karachi',
              style: kLight.copyWith(
                fontSize: 14.h,
                color: kDarkGrey,
              ),
            ),
          ],
        ),
        AppBarButton(svg: 'lib/assets/icons/back.svg', onTapButton: () {})
      ],
    );
  }
}
