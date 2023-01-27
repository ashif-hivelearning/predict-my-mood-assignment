// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('My Mood'),
          backgroundColor: Colors.black26,
        ),
        body: MyMoodPage(),
      ),
    );
  }
}

class MyMoodPage extends StatefulWidget {
  @override
  _MyMoodPageState createState() => _MyMoodPageState();
}

class _MyMoodPageState extends State<MyMoodPage> {
  String myCurrentMood = "2";

  void predictMyMood() {
    int random = Random().nextInt(5) + 1; // (0 - 4) + 1
    setState(() {
      myCurrentMood = "$random";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.asset(
            'images/$myCurrentMood.png',
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black26,
            ),
            child: Text('Predict My Mood'),
            onPressed: () {
              predictMyMood();
            },
          ),
        ),
      ],
    );
  }
}
