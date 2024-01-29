import 'package:ecommerce_with_max/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          bottomNavigationBar: BottomBarWidget()),
    );
  }
}
