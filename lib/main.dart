// ignore_for_file: unused_import

import 'package:find_flames/card.dart';
import 'package:find_flames/list.dart';
import 'package:flutter/material.dart';

import 'home.dart';


void main() {
  runApp(const MyApp());
}

class MyRoutes {
  static String homeRoutus = "/home";
  static String listRoutus = "/list";
  static String cardRoutus = "/card";
  static String iconRoutus = "/icon";
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find Flames',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        MyRoutes.homeRoutus: (context) =>  const home(),
        MyRoutes.listRoutus: (context) =>   list(),
        MyRoutes.cardRoutus: (context) =>   mycard(),
      },
    );
  }
}
