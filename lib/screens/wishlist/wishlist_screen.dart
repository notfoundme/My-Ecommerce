import 'package:ecommerce_with_max/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  static const String routeName = '/wishlist';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => WishlistScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(title: 'MY Wishlist Screen'),
          bottomNavigationBar: BottomBarWidget()),
    );
  }
}
