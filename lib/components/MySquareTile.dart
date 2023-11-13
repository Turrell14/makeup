// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;

  // ignore: use_super_parameters
  const SquareTile({
    Key? key, // Added Key parameter
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.deepPurple,
      ),
      child: Image.asset(
        imagePath, // Added comma and fixed syntax
        height: 40,
      ),
    );
  }
}
