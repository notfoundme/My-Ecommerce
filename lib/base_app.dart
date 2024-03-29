
import 'package:ecommerce_with_max/config/app_router.dart';
import 'package:ecommerce_with_max/config/text_theme.dart';
import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

class BaseApp extends StatelessWidget {
  const BaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}
