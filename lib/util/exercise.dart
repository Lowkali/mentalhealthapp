// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  final String exerciseType;
  final int numberOfExercises;
  final color;
  final icon;

  Exercise(
      {required this.icon,
      required this.color,
      required this.exerciseType,
      required this.numberOfExercises});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                      padding: EdgeInsets.all(16),
                      color: color,
                      child: Icon(
                        icon,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exerciseType,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      numberOfExercises.toString() + ' exercises',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            Icon(
              Icons.more_horiz,
              color: color,
            )
          ],
        ),
      ),
    );
  }
}
