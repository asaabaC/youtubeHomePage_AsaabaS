import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  CustomBottomNavigationBarState createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline), label: 'Shorts'),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline), label: 'Upload'),
        BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_books), label: 'Library'),
      ],
    );
  }
}
