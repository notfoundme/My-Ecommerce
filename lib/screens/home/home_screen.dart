import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_with_max/models/category_model.dart';
import 'package:ecommerce_with_max/models/product_model.dart';
import 'package:ecommerce_with_max/widgets/custom_navbar.dart';
import 'package:ecommerce_with_max/widgets/hero_carousel_card.dart';
import 'package:ecommerce_with_max/widgets/product_card.dart';
import 'package:ecommerce_with_max/widgets/section_title.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(title: 'MY Ecommerce'),
        bottomNavigationBar: const BottomBarWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    //gives the height of the highlighted image
                    aspectRatio: 1.5,
                    //gives width to the highlighted image
                    viewportFraction: 0.9,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    //CenterPageEnlargeStrategy is used to reduce the space between the cards
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                  ),
                  //harek categoryModel lai tyo carousel card ma pass gardeko
                  items: CategoryModel.categories
                      .map((eachItemOfCategoryModel) => HeroCarouselCard(
                          categoryModel: eachItemOfCategoryModel))
                      .toList(),
                ),
              ),
              const SectionTitle(title: "RECOMMENDED"),
              SizedBox(
                height: 165,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: Product.products.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      //Product card ma mageko product lau Produxt.products[ko index deko]
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ProductCard(
                          product: Product.products[index],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
