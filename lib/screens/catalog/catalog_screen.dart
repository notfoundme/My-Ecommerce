import 'package:ecommerce_with_max/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  static const String routeName = '/catalog';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CatalogScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(title: 'MY Catalog Screen'),
          bottomNavigationBar: BottomBarWidget()),
    );
  }
}
