import 'package:flutter/material.dart';

/// A custom drawer header widget that displays a background image with a gradient overlay,
/// a circular avatar, and user information such as name and job title.
///
/// The widget uses a [DrawerHeader] with zero padding and a black background color.
/// A network image is used as the background, and a gradient overlay is applied
/// to create a fade effect from transparent to black.
///
/// The header contains a [CircleAvatar] with initials, and text widgets to display
/// the user's name and job title, styled with white color and bold font for the name.
class DrawerHeaderCustom extends StatelessWidget {
  const DrawerHeaderCustom({super.key});

  @override
  Widget build(_) {
    return DrawerHeader(
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/600"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.01, 1.0],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(radius: 30, child: Text("DV")),
                SizedBox(height: 10.0),
                Text(
                  'Diego Villanueva',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Frontend Software Engineer',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
