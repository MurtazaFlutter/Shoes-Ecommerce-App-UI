import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';
import 'package:shoes_ecommerce_app/constants/constants.dart';

import '../../../common/product_detail_widget.dart';
import '../../productdetail/views/product_detail_screen.dart';

class FavouriteItemsScreen extends StatelessWidget {
  const FavouriteItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: Column(
            children: [
              const CustomAppBar(),
              Gap(24.h),
              Container(
                height: 203.h,
                width: 156.w,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 28.h,
                      width: 28.w,
                      decoration: const BoxDecoration(
                        color: kScaffoldColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        IconlyLight.heart,
                        size: 15.h,
                      ),
                    ),
                    //Image.asset('lib/assets/images/nike.png'),
                    const ProductDetailWidget()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
