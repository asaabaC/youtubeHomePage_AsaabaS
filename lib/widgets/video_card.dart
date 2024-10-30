import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final bool isShorts;
  final bool isLive;

  const VideoCard({super.key, this.isShorts = false, this.isLive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: isShorts ? 150 : null, // Width for shorts
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.grey[300],
                height: isShorts
                    ? 106 // Reduced height for shorts by 14px
                    : 100, // Regular video height
                child: const Center(
                  child: Icon(Icons.play_circle_outline, size: 40), // Placeholder
                ),
              ),
              if (isLive) // Display "LIVE" indicator if isLive is true
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    color: Colors.red,
                    child: const Text(
                      'LIVE',
                      style: TextStyle(
                        color: Color.fromARGB(255, 249, 244, 244),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            isShorts ? 'what is glory' : 'Flutter Tutorial for Beginners',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (!isShorts) ...[
            const Text('Flutter Channel'),
            const Text('1.2M views • 2 days ago'),
          ],
        ],
      ),
    );
  }
}
