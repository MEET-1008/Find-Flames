// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class list extends StatelessWidget {
  final List<Map<String, String>> photoList = [
    {
      'image': 'assets/p1.png',
      'title': 'Jordan',
      'description': 'hii!!!',
      'time': '13.10',
    },
    {
      'image': 'assets/p3.png',
      'title': 'Tim',
      'description': 'hello !!!',
            'time': '13.10',

    },
    {
      'image': 'assets/p2.png',
      'title': 'James',
      'description': 'typing....',
            'time': '13.10',

    }
    
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 500.0,
      child: ListView.builder(
        itemCount: photoList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 2, 5),
                  child: CircleAvatar(
                  radius: 33,
                            backgroundImage: AssetImage(photoList[index]['image']!),
                              
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  photoList[index]['title']!,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                photoList[index]['time']!,
                                style: TextStyle(
                                  
                                  fontSize: 10.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          photoList[index]['description']!,
                          style: TextStyle(fontSize: 14.0),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
