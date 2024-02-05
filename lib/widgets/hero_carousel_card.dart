import 'package:ecommerce_with_max/models/category_model.dart';
import 'package:flutter/material.dart';

//This is a single CarouselCard that takes the category Model as input
class HeroCarouselCard extends StatelessWidget {
  final CategoryModel categoryModel;
  const HeroCarouselCard({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(categoryModel.imageUrl,
                fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Text(categoryModel.name,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
