// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';

class mycard extends StatelessWidget {
  final List<Map<String, String>> photoList = [
    {
      'image': 'assets/i1.png',
      'title': 'likes',
    },
    {
      'image': 'assets/p1.png',
      'title': 'Jordan',
    },
    {
      'image': 'assets/p2.png',
      'title': 'James',
    },
    {
      'image': 'assets/p3.png',
      'title': 'tim',
    },
    {
      'image': 'assets/p4.png',
      'title': 'tomy',
    },
    {
      'image': 'assets/p1.png',
      'title': 'meet',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: photoList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Stack(
                children: [
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(7, 15, 7, 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage(photoList[index]['image']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 109, 0, 50),
                    child: Container(
                      height: 14,
                      width: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        photoList[index]['title']!,
                        style: TextStyle(
                          fontSize: 12.0,
                          
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
