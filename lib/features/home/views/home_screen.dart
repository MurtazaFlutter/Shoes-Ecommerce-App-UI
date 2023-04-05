import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:shoes_ecommerce_app/providers/products_provider.dart';
import '../../../common/product_detail_widget.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/new_arrival_promotion.dart';
import '../widgets/product_type.dart';
import '../widgets/search_field.dart';
import '../widgets/select_brand.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productsProvider =
        Provider.of<ProductsProvider>(context, listen: false);
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
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: productsProvider.getProdcuts.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8.0.r),
                            child: ChangeNotifierProvider.value(
                                value: productsProvider.getProdcuts[index],
                                child: const ProductDetailWidget()),
                          );
                        })),
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
