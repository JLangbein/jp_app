import 'package:flutter/material.dart';
import 'package:jp_app/common/domain/jp_app_icons.dart';
import 'package:jp_app/common/domain/product_class.dart';
import 'package:jp_app/features/selection/presentation/product_details_bottom_screen.dart';

class ProductCard extends StatelessWidget {
  // attributes

  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<dynamic>(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return ProductDetailsBottomScreen(product: product);
          },
        );
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0.0, 0.0, 24.0, 0.0),
        width: 206.0,
        height: 294.0,
        decoration: BoxDecoration(
          border: BoxBorder.all(
            color: Color.fromARGB(131, 255, 255, 255),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(60, 255, 255, 255),
              Color.fromARGB(217, 143, 140, 245),
              Color.fromARGB(186, 141, 91, 234),
            ],
            stops: [-0.0, 0.5, 1.0],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image(
                  image: AssetImage(product.imageURL),
                  height: 170.0,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 0.0,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    product.subtitle,
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    spacing: 4.0,
                    children: [
                      Icon(
                        JpAppIcons.app_coin,
                        size: 14.0,
                        color: Colors.white,
                      ),
                      Text(
                        product.price.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 4.0,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(JpAppIcons.heart, color: Colors.white, size: 14.0),
                      Text(
                        product.likes.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
