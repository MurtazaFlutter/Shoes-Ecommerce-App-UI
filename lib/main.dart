import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce_app/common/bottom_nav_bar.dart';
import 'constants/constants.dart';
import 'providers/allproviders/all_providers.dart';

void main() {
  runApp(
    const AllProviders(),
  );
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
          home: const BottomNavBarV2(),
        );
      },
    );
  }
}
