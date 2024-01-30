import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_with_max/models/category_model.dart';
import 'package:ecommerce_with_max/widgets/custom_navbar.dart';
import 'package:ecommerce_with_max/widgets/hero_carousel_card.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'MY Ecommerce'),
        bottomNavigationBar: BottomBarWidget(),
        body: Container(
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
              .map((eachItemOfCategoryModel) =>
                  HeroCarouselCard(categoryModel: eachItemOfCategoryModel))
              .toList(),
        )),
      ),
    );
  }
}
