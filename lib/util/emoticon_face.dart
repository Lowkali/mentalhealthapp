// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoji;
  final String emoji_feeling;

  EmoticonFace({required this.emoji, required this.emoji_feeling});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue[600],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              emoji,
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(height: 10),
          Text(
            emoji_feeling,
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
