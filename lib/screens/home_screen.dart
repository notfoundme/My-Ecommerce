import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'My Ecommerce'),
        bottomNavigationBar: BottomAppBar(),
      ),
    );
  }
}
