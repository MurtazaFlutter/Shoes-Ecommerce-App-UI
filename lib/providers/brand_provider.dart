import 'package:flutter/material.dart';

class BrandsProvider with ChangeNotifier {
  final List<Map<String, dynamic>> _brands = [
    {
      'image': 'lib/assets/icons/nike.svg',
      'title': 'Nike',
    },
    {
      'image': 'lib/assets/icons/puma.svg',
      'title': 'PUMA',
    },
    {
      'image': 'lib/assets/icons/armor.svg',
      'title': 'Armour',
    },
    {
      'image': 'lib/assets/icons/adidas.svg',
      'title': 'adidas',
    },
    {
      'image': 'lib/assets/icons/converse.svg',
      'title': 'Converse',
    },
  ];

  List get getBrands => _brands;
}
