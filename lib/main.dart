import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shoes_ecommerce_app/features/home/views/home_screen.dart';
import 'package:shoes_ecommerce_app/providers/brand_provider.dart';
import 'package:shoes_ecommerce_app/providers/products_detail_provider.dart';
import 'package:shoes_ecommerce_app/providers/products_provider.dart';
import 'constants/constants.dart';

void main() {
  runApp(
    const AllProviders(),
  );
}

class AllProviders extends StatelessWidget {
  const AllProviders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => BrandsProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => ProductDetailProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => ProductsProvider(),
      ),
    ], child: const MyApp());
  }
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
          home: const HomeScreen(),
        );
      },
    );
  }
}
