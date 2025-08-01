import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jp_app/common/domain/jp_app_icons.dart';
import 'package:jp_app/common/domain/product_class.dart';
import 'package:jp_app/common/presentation/price_button.dart';
import 'package:jp_app/features/selection/presentation/product_details_container.dart';

class ProductDetailsBottomScreen extends StatelessWidget {
  // attributes
  final Product product;
  final segmentsMap = <String, Widget>{
    'Small': Text('Small', style: TextStyle(color: Colors.white54)),
    'Medium': Text('Medium', style: TextStyle(color: Colors.white54)),
    'Large': Text('Large', style: TextStyle(color: Colors.white70)),
  };

  ProductDetailsBottomScreen({super.key, required this.product});

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
              SizedBox(height: 80.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoSlidingSegmentedControl(
                      padding: EdgeInsetsGeometry.all(2.0),
                      thumbColor: Colors.white24,
                      children: segmentsMap,
                      groupValue: 'Large',
                      onValueChanged: (size) {},
                    ),
                    Row(
                      spacing: 8.0,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton.outlined(
                          visualDensity: VisualDensity.compact,
                          autofocus: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white54,
                            size: 16.0,
                          ),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton.outlined(
                          visualDensity: VisualDensity.compact,
                          autofocus: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            JpAppIcons.plus,
                            color: Colors.white54,
                            size: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36.0),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 32.0),
                child: PriceButton(price: product.price),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
