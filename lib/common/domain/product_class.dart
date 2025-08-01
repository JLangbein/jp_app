import 'package:flutter/cupertino.dart';
import 'package:jp_app/common/domain/jp_app_icons.dart';

class Product {
  // attributes
  final String name;
  final String subtitle;
  final String description;
  final double price;
  final String imageURL;
  final int likes;
  final double reviews;
  final List<IconData> ingredients = [
    JpAppIcons.gluten,
    JpAppIcons.sugar,
    JpAppIcons.lowfat,
    JpAppIcons.kcal,
  ];

  Product({
    required this.name,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.imageURL,
    required this.likes,
    required this.reviews,
  });
}
