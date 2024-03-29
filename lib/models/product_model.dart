import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavourite = false;
  Product(
      {required this.id,
      required this.description,
      required this.imageUrl,
      required this.price,
      required this.title});
}
