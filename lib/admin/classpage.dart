// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
//classpage
import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/ClassroomPage.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';
import 'package:flutter_application_1/components/ClassSchedBox.dart';
import 'package:flutter_application_1/components/CustomSearchBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        backgroundColor: Color(0xFF2E3192),
        foregroundColor: Color(0xFFFFFFFF),
      ),
      body: ClassScreen(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF3CC16B),
        shape: CircleBorder(),
        elevation: 4.0,
        child: Icon(
          FontAwesomeIcons.plus,
          color: Colors.white,
          size: 20,
        ),
        onPressed: () {
          // Navigate to the new screen when the button is pressed
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ClassroomPagers()), // Replace NewScreen with your actual screen widget
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(),
    );
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
