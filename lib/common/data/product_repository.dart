import 'package:jp_app/common/domain/product_class.dart';

class ProductRepository {
  List<Product> products = [
    Product(
      name: 'Angi\'s Yummy Burger',
      subtitle: 'Delish vegan burger that tastes like heaven',
      description:
          'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
      price: 13.99,
      likes: 212,
      reviews: 4.8,
      imageURL: 'assets/burger.png',
    ),
    Product(
      name: 'Mowgli\'s Cup',
      subtitle: 'Strawberry Ice cream',
      description:
          'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
      price: 8.99,
      likes: 200,
      reviews: 4.0,
      imageURL: 'assets/cupcake_cat.png',
    ),
    Product(
      name: 'Balu\'s Cup',
      subtitle: 'Pistachio Ice cream',
      description:
          'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
      price: 8.99,
      likes: 265,
      reviews: 4.0,
      imageURL: 'assets/cupcake_chick.png',
    ),
    Product(
      name: 'Smiling David',
      subtitle: 'Coffee Ice cream',
      description:
          'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
      price: 3.99,
      likes: 310,
      reviews: 4.0,
      imageURL: 'assets/icecream_stick.png',
    ),
    Product(
      name: 'Kai in a Cone',
      subtitle: 'Vanilla Ice cream',
      description:
          'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
      price: 3.99,
      likes: 290,
      reviews: 4.0,
      imageURL: 'assets/icecream_cone.png',
    ),
  ];
}
