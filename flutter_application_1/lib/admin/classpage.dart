// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';
import 'package:flutter_application_1/components/ClassSchedBox.dart';
import 'package:flutter_application_1/components/CustomSearchBar.dart';

// ignore: library_prefixes

class ClassPage extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<ClassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text('Class'),
            backgroundColor: Colors.blue),
        body: ClassScreen(),
        bottomNavigationBar: BottomNavBar());
  }
}

class ClassScreen extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          (CustomSearchBar()),
          Expanded(
            child: ListView(children: <Widget>[
              ClassSchedBox(),
              const SizedBox(height: 10),
              ClassSchedBox(),
              const SizedBox(height: 10),
            ]),
          ),
        ],
      ),
    );
  }
}
