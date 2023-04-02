import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../constants/constants.dart';
import '../../../providers/brand_provider.dart';

class SelectBrand extends StatefulWidget {
  const SelectBrand({super.key});

  @override
  State<SelectBrand> createState() => _SelectBrandState();
}

class _SelectBrandState extends State<SelectBrand> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer<BrandsProvider>(builder: (context, brandsProvider, child) {
      final brandsProviderItems = brandsProvider.getBrands;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(brandsProviderItems.length, (index) {
            return InkWell(
              onTap: () {
                setState(() {
                  selectIndex = index;
                });
              },
              child: FittedBox(
                child: Container(
                  decoration: BoxDecoration(
                    color: selectIndex == index ? kDefaultColor : null,
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(6.0.r),
                        child: Container(
                          height: 44.h,
                          width: 44.w,
                          decoration: const BoxDecoration(
                              color: kWhiteColor, shape: BoxShape.circle),
                          child: Padding(
                            padding: EdgeInsets.all(5.r),
                            child: SvgPicture.asset(
                              brandsProviderItems[index]['image'],
                              height: 44.h,
                              width: 44.w,
                            ),
                          ),
                        ),
                      ),
                      selectIndex == index
                          ? Text(
                              brandsProviderItems[index]['title'],
                              style: kRegular.copyWith(
                                  fontSize: 12.h, color: kWhiteColor),
                            )
                          : const Text('')
                    ],
                  ),
                ),
              ),
            );
          })
        ],
      );
    });
  }
}
