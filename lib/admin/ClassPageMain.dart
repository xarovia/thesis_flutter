// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/ClassroomPage.dart';
import 'package:flutter_application_1/admin/EditStudents.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';
import 'package:flutter_application_1/components/ClassSchedBox.dart';
import 'package:flutter_application_1/components/CustomSearchBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClassPage extends StatefulWidget {
  @override
  _ClassPageState createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Classes'),
        backgroundColor: Color(0xFF2E3192),
        foregroundColor: Color(0xFFFFFFFF),
      ),
      body: ClassScreen(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF3CC16B),
        shape: CircleBorder(),
        elevation: 4.0,
        child: Icon(
          FontAwesomeIcons.pen,
          color: Colors.white,
          size: 20,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ClassroomPagers(),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class ClassScreen extends StatefulWidget {
  @override
  _ClassScreenState createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          CustomSearchBar(),
          Expanded(
            child: ListView(
              children: <Widget>[
                ClassSchedBox(
                  className: "4-120",
                  classTime: "8:20 AM - 10:50 AM",
                  onPressed: () {
                    // route kung asa ipush dff box
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditStudents(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
                ClassSchedBox(
                  className: "4-130",
                  classTime: "12:00 PM - 2:30 PM",
                  onPressed: () {
                    // route kung asa ipush dff box
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditStudents(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
