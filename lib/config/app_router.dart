import 'package:ecommerce_with_max/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('settings.name');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();

      case HomeScreen.routeName:
        return HomeScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
      ),
    );
  }
}
