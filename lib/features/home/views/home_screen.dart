import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:shoes_ecommerce_app/constants/constants.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/new_arrival_promotion.dart';
import '../widgets/product_type.dart';
import '../widgets/search_field.dart';
import '../widgets/select_brand.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeCustomAppBar(),
                    Gap(24.h),
                    const SearchTextField(),
                    Gap(32.h),
                    const SelectBrand(),
                    Gap(24.h),
                    const ProductType(
                      title1: 'Popular Shoes',
                      title2: 'See all',
                    ),
                    Gap(16.h),
                    Row(
                      children: [
                        const ProductWidget(),
                        Gap(21.w),
                        const ProductWidget(),
                      ],
                    ),
                    Gap(24.h),
                    const ProductType(
                      title1: 'New Arrivals',
                      title2: 'See all',
                    ),
                    Gap(16.h),
                    const NewArrivalPromotion(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
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
              child: Image.asset(
                'lib/assets/images/image1.svg',
                // width: 160.w,
                // height: 80.38.h,
              ),
            ),
            Gap(20.h),
            Text(
              'BEST SELLER',
              style: kLight.copyWith(
                fontSize: 12.h,
                color: kDefaultColor,
              ),
            ),
            Gap(4.h),
            Text(
              'Nike Jordan',
              style: kLight.copyWith(
                fontSize: 16.h,
                color: kDarkGrey,
              ),
            ),
            Gap(12.h),
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
