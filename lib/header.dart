import 'package:flutter/material.dart';

Widget SectionHeader(String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      Text("View All", style: TextStyle(color: Colors.grey[500], fontSize: 12)),
    ],
  );
}

Widget Mainheader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.menu, color: Colors.white),
      ),
      const Icon(Icons.search),
    ],
  );
}
