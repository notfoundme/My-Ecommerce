import 'package:ecommerce_with_max/extensions/resposive_context.dart';
import 'package:ecommerce_with_max/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
            height: context.height * 0.3,
            width: context.width * 0.5,
            // list is implemented in ProductModel named products
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        //Black Container
        Positioned(
          top: 60,
          child: Expanded(
            child: Container(
              height: 80,
              width: context.width * 0.5,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(50),
              ),
            ),
          ),
        ),
        //internal container
        Positioned(
          top: 65,
          left: 5,
          child: Expanded(
            child: Container(
              height: 70,
              width: context.width * 0.5,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.white),
                      ),
                      //${} chnages into double
                      Text(
                        '\$ ${product.price}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle,
                        color: Colors.white,
                        size: 30,
                      ))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
