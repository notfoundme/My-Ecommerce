import 'package:ecommerce_with_max/screens/cart/cart_screen.dart';
import 'package:ecommerce_with_max/screens/catalog/catalog_screen.dart';
import 'package:ecommerce_with_max/screens/home/home_screen.dart';
import 'package:ecommerce_with_max/screens/product/product_screen.dart';
import 'package:ecommerce_with_max/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('settings.name');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      // define every route name
      //1.
      
      case HomeScreen.routeName:
        return HomeScreen.route();
      //2.
      case CartScreen.routeName:
        return CartScreen.route();
      //3.
       case ProductScreen.routeName:
        return ProductScreen.route();
      //4.
 case CatalogScreen.routeName:
        return CatalogScreen.route();
      


      //5.
 case WishlistScreen.routeName:
        return WishlistScreen.route();
      
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
