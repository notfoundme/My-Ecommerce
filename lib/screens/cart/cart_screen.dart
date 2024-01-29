import 'package:ecommerce_with_max/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const String routeName = '/cart';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(title: 'MY Cart'),
          bottomNavigationBar: BottomBarWidget()),
    );
  }
}
