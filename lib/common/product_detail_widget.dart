import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:shoes_ecommerce_app/constants/constants.dart';
import 'package:shoes_ecommerce_app/models/products_model.dart';

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productsModel = Provider.of<ProductsModel>(context, listen: false);
    return Container(
      height: 201.h,
      width: 157.w,
      decoration: BoxDecoration(
          color: kWhiteColor, borderRadius: BorderRadius.circular(16.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20.h),
            Expanded(
              child: Image.asset(productsModel.image
                  // width: 160.w,
                  // height: 80.38.h,
                  ),
            ),
            //  Gap(20.h),
            Text(
              'BEST SELLER',
              style: kLight.copyWith(
                fontSize: 12.h,
                color: kDefaultColor,
              ),
            ),
            Gap(4.h),
            Text(
              productsModel.title,
              style: kLight.copyWith(
                fontSize: 16.h,
                color: kDarkGrey,
              ),
            ),
            // Gap(12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$493.00',
                  style: kLight.copyWith(
                    fontSize: 14.h,
                    color: kDarkGrey,
                  ),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 35.5.h,
                      width: 34.w,
                      decoration: const BoxDecoration(color: kDefaultColor),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
