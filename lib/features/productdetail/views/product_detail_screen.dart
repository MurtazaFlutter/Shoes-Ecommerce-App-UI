import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:shoes_ecommerce_app/common/default_button.dart';
import 'package:shoes_ecommerce_app/constants/constants.dart';
import '../../../common/back_button.dart';
import '../../home/widgets/new_arrival_promotion.dart';
import 'widgets/select_size.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 20.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomAppBar(),
                  Image.asset('lib/assets/images/nike.png'),
                  Gap(16.h),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProductInfo(),
                    Gap(8.h),
                    Text(
                      'Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....',
                      style: kLight.copyWith(
                        fontSize: 14.h,
                        color: kGreyColor,
                      ),
                    ),
                    Gap(16.h),
                    Text(
                      'Gallery',
                      style: kRegular.copyWith(
                        fontSize: 18.h,
                        color: kDarkGrey,
                      ),
                    ),
                    Gap(16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...List.generate(
                          3,
                          (index) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.w),
                            child: const ProductGallery(),
                          ),
                        )
                      ],
                    ),
                    Gap(16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Size',
                                ),
                              ],
                            ),
                            const Text(
                              'Size',
                            ),
                            const Text(
                              'Size',
                            ),
                            const Text(
                              'Size',
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(16.h),
                    const SelectSize(),
                    Gap(41.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: kLight.copyWith(
                                  fontSize: 16.h, color: kGreyColor),
                            ),
                            Text(
                              '\$849.69',
                              style: kLight.copyWith(
                                  fontSize: 20.h, color: kDarkGrey),
                            ),
                          ],
                        ),
                        DefaultButton(
                            width: 167.w,
                            onTap: () {},
                            buttonTitle: 'Add To Cart')
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class ProductGallery extends StatelessWidget {
  const ProductGallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 56.w,
      decoration: BoxDecoration(
        color: kScaffoldColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Image.asset(
        'lib/assets/images/nike.png',
        height: 21.h,
        width: 45.w,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBarButton(
          onTapButton: () {
            Navigator.pop(context);
          },
          svg: 'lib/assets/icons/back.svg',
        ),
        Text(
          'Men\'s Shoes',
          style: kRegular.copyWith(fontSize: 16.h, color: kDarkGrey),
        ),
        AppBarButton(
          onTapButton: () {
            Navigator.pop(context);
          },
          svg: 'lib/assets/icons/back.svg',
        ),
      ],
    );
  }
}
