import 'package:flutter/material.dart';

class ProductDetailProvider with ChangeNotifier {
  final List<int> _selectShoesSize = [38, 39, 40, 41, 42, 43];

  List get getSelectShoesSize => _selectShoesSize;
}
