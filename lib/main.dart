import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shoes_ecommerce_app/providers/brand_provider.dart';
import 'constants/constants.dart';
import 'features/productdetail/views/product_detail_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => BrandsProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(scaffoldBackgroundColor: kScaffoldColor),
            home: const ProductDetailScreen());
      },
    );
  }
}
