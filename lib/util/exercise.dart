// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  // final String

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.favorite),
              SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  Text(
                    'Speaking exercises',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '16 exercises',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
