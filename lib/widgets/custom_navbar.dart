import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: Icon(Icons.home),
              color: Colors.white,
              iconSize: 35,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
              iconSize: 35,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/user');
              },
              icon: Icon(Icons.person),
              color: Colors.white,
              iconSize: 35,
            )
          ],
        ),
      ),
    );
  }
}
