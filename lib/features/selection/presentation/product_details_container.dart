import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/common/domain/jp_app_icons.dart';
import 'package:jp_app/common/domain/product_class.dart';

class ProductDetailsContainer extends StatelessWidget {
  const ProductDetailsContainer({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 24.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
          child: Container(
            height: 370.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.01),
              borderRadius: BorderRadius.circular(30.0),
              border: BoxBorder.all(
                color: Color.fromRGBO(255, 255, 255, 0.15),
                width: 1.0,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 32.0, 16.0),
                  child: Row(
                    spacing: 8.0,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(JpAppIcons.heart, color: Colors.white38, size: 14.0),
                      Text(
                        product.likes.toString(),
                        style: TextStyle(color: Colors.white38),
                      ),
                    ],
                  ),
                ),
                Text(
                  product.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    product.description,
                    style: TextStyle(color: Colors.white54, fontSize: 14.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 4.0,
                  children: [
                    Icon(JpAppIcons.app_coin, color: Colors.white, size: 18.0),
                    Text(
                      product.price.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Divider(color: Colors.white38, indent: 32.0, endIndent: 32.0),
                Padding(
                  padding: EdgeInsetsGeometry.fromLTRB(32.0, 0.0, 32.0, 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        spacing: 8.0,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ingredients',
                            style: TextStyle(color: Colors.white38),
                          ),
                          SizedBox(
                            height: 20.0,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: product.ingredients
                                  .map(
                                    (icon) => Padding(
                                      padding: const EdgeInsets.only(
                                        right: 8.0,
                                      ),
                                      child: Icon(icon, color: Colors.white60),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        spacing: 8.0,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reviews',
                            style: TextStyle(color: Colors.white38),
                          ),
                          Row(
                            spacing: 16.0,
                            children: [
                              SizedBox(
                                height: 16.0,
                                child: Stack(
                                  children: [
                                    ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 5,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return Icon(
                                          Icons.star_border_outlined,
                                          color: Colors.white70,
                                          size: 18.0,
                                        );
                                      },
                                    ),
                                    ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: product.reviews.toInt(),
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return Icon(
                                          Icons.star,
                                          color: Colors.white70,
                                          size: 18.0,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                product.reviews.toString(),
                                style: TextStyle(color: Colors.white38),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
