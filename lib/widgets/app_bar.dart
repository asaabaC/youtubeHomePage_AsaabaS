import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Image.asset('assets/images/utube.png',
              height: 32), // Add your logo asset
          const Spacer(),
          const Icon(Icons.cast, color: Colors.black),
          const SizedBox(width: 20),
          const Icon(Icons.notifications, color: Colors.black),
          const SizedBox(width: 20),
          const Icon(Icons.search, color: Colors.black),
          const SizedBox(width: 20),
          const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 14, 218, 95),
            child: Text('S'), // Initial or Profile Image
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
