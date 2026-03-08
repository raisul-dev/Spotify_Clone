// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BasicBatton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double ? height;
  const BasicBatton({required this.onPressed,
  this.height,
   required this.title,
   super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style:ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 73)
      ),
       child: Text(title,style: TextStyle(color: Colors.white),));
  }
}
