// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/EditStudents.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';
import 'package:flutter_application_1/components/studentCheckerBox.dart';

class studentAttendancePage extends StatefulWidget {
  @override
  _studentAttendancePageState createState() => _studentAttendancePageState();
}

class _studentAttendancePageState extends State<studentAttendancePage> {
  bool isDoneButtonClicked = false;
  bool isOngoingButtonClicked = false;

  void _handleDoneButtonClick() {
    setState(() {
      isDoneButtonClicked = !isDoneButtonClicked;
    });
  }

  void _handleOngoingButtonClick() {
    setState(() {
      isOngoingButtonClicked = !isOngoingButtonClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Student Attendance'),
        backgroundColor: Color(0xFF2E3192),
        foregroundColor: Color(0xFFFFFFFF),
      ),
      body: StudentAttendanceScreen(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class StudentAttendanceScreen extends StatefulWidget {
  @override
  _StudentAttendanceScreenState createState() =>
      _StudentAttendanceScreenState();
}

class _StudentAttendanceScreenState extends State<StudentAttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: Colors.grey, // Grey background color for the container
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Average Attendance',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20), // Add spacing
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white, // Circle background color
                ),
                child: Center(
                  child: Text(
                    '98',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Add spacing
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, // Add spacing between items
                children: [
                  Column(
                    children: [
                      Text('Present'),
                      Text('13'), // Number for Present
                    ],
                  ),
                  Column(
                    children: [
                      Text('Late'),
                      Text('6'), // Number for Late
                    ],
                  ),
                  Column(
                    children: [
                      Text('Absent'),
                      Text('1'), // Number for Absent
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      StudentCheckBox(
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
                      StudentCheckBox(
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
          ),
        ),
      ],
    );
  }
}
