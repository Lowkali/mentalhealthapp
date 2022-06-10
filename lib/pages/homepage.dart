// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mentalhealthapp/util/emoticon_face.dart';
import 'package:mentalhealthapp/util/exercise.dart';
// import 'package:mentalhealthapp/util/exercise.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List feelings = [
    ['😃', 'Happy'],
    ['😞', 'Sad'],
    ['😂', 'Joy'],
    ['😩', 'Anxious'],
  ];
  List<IconData> icons = [
    Icons.favorite,
    Icons.task_alt,
    Icons.mosque,
    Icons.sports_soccer
  ];

  final List exercises = [
    ['Speaking exercises', 16],
    ['Reading exercises', 12],
    ['Religious exercises', 6],
    ['Outdoor exercises', 21]
  ];

  List<Color> colors = [Colors.orange, Colors.purple, Colors.lime, Colors.red];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //  bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ]),
        backgroundColor: Colors.blue[800],
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            'Hi, mi Breddda!',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '21 Jan 2020',
                          style: TextStyle(
                            color: Colors.blue[200],
                          ),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue[600],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 25,
                ),
                // search bar
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: Colors.blue[600],
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade600),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade600))),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel today?',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),

                // emoji faces
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 120,
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ),
                        itemCount: feelings.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              right: index == feelings.length - 1 ? 0 : 8,
                              bottom: 2,
                            ),
                            child: EmoticonFace(
                              emoji: feelings[index][0],
                              emoji_feeling: feelings[index][1],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.grey[200],
            ),
            child: Padding(
                padding: EdgeInsets.only(top: 25, right: 25, left: 25),
                child: Center(
                  child: Column(
                    children: [
                      // exercices heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Exercises',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.blue[800],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),

                      //list of exercises
                      Expanded(
                        child: ListView.builder(
                          itemCount: exercises.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Exercise(
                                icon: icons[index],
                                color: colors[index],
                                exerciseType: exercises[index][0],
                                numberOfExercises: exercises[index][1]);
                          },
                        ),
                      ),
                    ],
                  ),
                )),
          ))
        ]));
  }
}
