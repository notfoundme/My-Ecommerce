import 'package:ecommerce_with_max/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(title: 'My Ecommerce'),
          bottomNavigationBar: BottomBarWidget()),
    );
  }
}
