// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  // ignore: use_super_parameters
  const MyButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.pinkAccent,
        ),
        child: const Center(
          child: Text(
            'Sign in',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight:
                  FontWeight.bold, // 'fontWeight' should be 'FontWeight'
            ),
          ),
        ),
      ),
    );
  }
}
