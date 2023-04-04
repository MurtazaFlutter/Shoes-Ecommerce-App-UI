import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shoes_ecommerce_app/providers/products_detail_provider.dart';
import '../../../../constants/constants.dart';

class SelectSize extends StatefulWidget {
  const SelectSize({super.key});

  @override
  State<SelectSize> createState() => _SelectSizeState();
}

class _SelectSizeState extends State<SelectSize> {
  int selectSize = 2;
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductDetailProvider>(
        builder: (context, productDetailProvider, child) {
      final productSize = productDetailProvider.getSelectShoesSize;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
              productSize.length,
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
                          productSize[index].toString(),
                          style: kLight.copyWith(
                            fontSize: 16.h,
                            color:
                                selectSize == index ? kWhiteColor : kGreyColor,
                          ),
                        ),
                      ),
                    ),
                  )),
        ],
      );
    });
  }
}
