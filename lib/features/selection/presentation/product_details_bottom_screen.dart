import 'package:flutter/material.dart';
import 'package:jp_app/common/domain/jp_app_icons.dart';
import 'package:jp_app/common/domain/product_class.dart';
import 'package:jp_app/features/selection/presentation/product_details_container.dart';

class ProductDetailsBottomScreen extends StatelessWidget {
  // attributes
  final Product product;

  const ProductDetailsBottomScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 824.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF2F2B22), Color.fromARGB(255, 21, 46, 48)],
          stops: [0.6, 1.0],
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -145.00,
            right: -6.0,
            width: 440.0,
            child: Image(image: AssetImage(product.imageURL)),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: IconButton.outlined(
                      visualDensity: VisualDensity.compact,
                      autofocus: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        JpAppIcons.cancel,
                        color: Colors.white54,
                        size: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 120.0),
              ProductDetailsContainer(product: product),
            ],
          ),
        ],
      ),
    );
  }
}
