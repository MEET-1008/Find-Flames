// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, unused_import

import 'package:find_flames/B_Navigation.dart';
import 'package:find_flames/card.dart';
import 'package:find_flames/list.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 244, 233, 236),
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(15, 3, 0, 3),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/logo.png"),
          ),
        ),
        centerTitle: true,
        title: Text("Find Flames",style: TextStyle(color: Colors.pink),),
        actions: [
          Icon(Icons.filter_list,color: Colors.black,),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 244, 233, 236),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height * 0.95,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: mycard(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 138, 50, 10),
            child: Container(
              height: 38,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 19),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 190),
            child: list(),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavi(),
    );
  }
}
