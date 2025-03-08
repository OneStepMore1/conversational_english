import 'package:flutter/material.dart';

class CustomMenuIcon extends StatelessWidget {
  const CustomMenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 24,
          height: 3,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(5)),
        ),
        SizedBox(height: 7), // Adjust spacing as needed
        Container(
          width: 16,
          height: 3,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(5)),
        ),
      ],
    );
  }
}
