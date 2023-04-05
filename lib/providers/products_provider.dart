import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/models/products_model.dart';

class ProductsProvider with ChangeNotifier {
  List<ProductsModel> get getProdcuts => _productsList;

  static final List<ProductsModel> _productsList = [
    ProductsModel(
      image: 'lib/assets/images/nike.png',
      id: '1',
      title: 'Nike Jordan',
      price: 493.00,
    ),
    ProductsModel(
      image: 'lib/assets/images/nike air jordan.png',
      id: '2 ',
      title: 'Nike Air Max',
      price: 493.00,
    ),
    ProductsModel(
      image: 'lib/assets/images/nike.png',
      id: '4',
      title: 'Nike Jordan',
      price: 493.00,
    ),
    ProductsModel(
      image: 'lib/assets/images/nike air jordan.png',
      id: '2 ',
      title: 'Nike Air Max',
      price: 893.00,
    ),
  ];
}
