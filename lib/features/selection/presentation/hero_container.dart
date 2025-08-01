import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/common/domain/jp_app_icons.dart';
import 'package:jp_app/common/domain/product_class.dart';
import 'package:jp_app/common/presentation/card_button.dart';

class HeroContainer extends StatelessWidget {
  // attributes
  final Product product;

  const HeroContainer({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(20.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.3,
              child: Container(
                height: 270.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/utils/cut_card.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -16.0,
              right: 0.0,
              child: Image.asset(product.imageURL, scale: 1.8),
            ),
            Padding(
              padding: EdgeInsetsGeometry.fromLTRB(24.0, 18.0, 24.0, 48.0),
              child: Column(
                spacing: 6.0,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        spacing: 6.0,
                        children: [
                          Icon(
                            JpAppIcons.star,
                            color: Color(0xFFEF84B5),
                            size: 14.0,
                          ),
                          Text(
                            product.reviews.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 150.0,
                    child: Text(
                      product.subtitle,
                      style: TextStyle(color: Colors.white, fontSize: 13.0),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Row(
                    spacing: 4.0,
                    children: [
                      Icon(
                        JpAppIcons.app_coin,
                        color: Colors.white,
                        size: 16.0,
                      ),
                      Text(
                        product.price.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 48.0),
                  CardButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
