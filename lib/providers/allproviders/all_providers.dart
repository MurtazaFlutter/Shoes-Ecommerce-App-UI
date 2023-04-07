import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../main.dart';
import '../brand_provider.dart';
import '../products_detail_provider.dart';
import '../products_provider.dart';

class AllProviders extends StatelessWidget {
  const AllProviders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BrandsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductDetailProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductsProvider(),
        ),
      ],
      child: const MyApp(),
    );
  }
}
