import 'package:flutter/material.dart';

//para un navbar global

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{ //es importante el implements PreferredSizeWidget

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // si se usa implements PreferredSizeWidget es obligatorio usar esto

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Youtubepro'),
      backgroundColor: Colors.red,
      actions: [
        Icon(Icons.search),
        Icon(Icons.person),
        Icon(Icons.camera)
      ],
    );
  }
}