import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            // color: Colors.black,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
              child: Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.black)),
            ),
          ),
        ),
      ),
      // iconTheme: IconThemeData(color: Colors.black),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/wishlist');
            },
            icon: const Icon(
              Icons.favorite,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
