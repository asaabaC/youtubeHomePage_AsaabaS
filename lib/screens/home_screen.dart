import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Horizontal Category List
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  _CategoryChip(category: 'All'),
                  _CategoryChip(category: 'Music'),
                  _CategoryChip(category: 'Movies'),
                  _CategoryChip(category: 'Gaming'),
                  _CategoryChip(category: 'Trending'),
                ],
              ),
            ),

            // Shorts Section (Horizontally Scrollable)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Shorts',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Number of shorts
                itemBuilder: (context, index) {
                  return const VideoCard(isShorts: true);
                },
              ),
            ),

            // Regular Videos Section (Vertically Scrollable)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Videos',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(), // Disables nested scrolling
              shrinkWrap: true, // Allows it to take only necessary space
              itemCount: 10, // Number of videos
              itemBuilder: (context, index) {
                return const VideoCard(); // Regular vertical video cards
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  final String category;
  const _CategoryChip({required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(category),
        backgroundColor: Colors.grey[300],
      ),
    );
  }
} 