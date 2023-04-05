import 'package:flutter/material.dart';

class ProductsModel with ChangeNotifier {
  final String image;
  final String id;
  final String title;
  final double price;

  ProductsModel({
    required this.image,
    required this.id,
    required this.title,
    required this.price,
  });
}
