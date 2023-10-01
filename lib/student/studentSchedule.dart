// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/ClassroomPage.dart';
import 'package:flutter_application_1/admin/EditStudents.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';
import 'package:flutter_application_1/components/ClassSchedBox.dart';
import 'package:flutter_application_1/components/CustomSearchBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StudentScheduleScreen extends StatefulWidget {
  const StudentScheduleScreen({super.key});

  @override
  _StudentScheduleScreenState createState() => _StudentScheduleScreenState();
}

class _StudentScheduleScreenState extends State<StudentScheduleScreen> {
  bool isDoneButtonClicked = false;
  bool isOngoingButtonClicked = false;

  void _handleDoneButtonClick() {
    setState(() {
      isDoneButtonClicked = !isDoneButtonClicked;
      isOngoingButtonClicked = false; // Reset the other button state
    });
  }

  void _handleOngoingButtonClick() {
    setState(() {
      isOngoingButtonClicked = !isOngoingButtonClicked;
      isDoneButtonClicked = false; // Reset the other button state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Student Schedule'),
        backgroundColor: Color(0xFF2E3192),
        foregroundColor: Color(0xFFFFFFFF),
      ),
      body: StudentScheduleScreenContent(
        isDoneButtonClicked: isDoneButtonClicked,
        isOngoingButtonClicked: isOngoingButtonClicked,
        onDoneButtonPressed: _handleDoneButtonClick,
        onOngoingButtonPressed: _handleOngoingButtonClick,
      ),
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

class StudentScheduleScreenContent extends StatelessWidget {
  final bool isDoneButtonClicked;
  final bool isOngoingButtonClicked;
  final VoidCallback onDoneButtonPressed;
  final VoidCallback onOngoingButtonPressed;

  StudentScheduleScreenContent({
    super.key,
    required this.isDoneButtonClicked,
    required this.isOngoingButtonClicked,
    required this.onDoneButtonPressed,
    required this.onOngoingButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchBar(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: onDoneButtonPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDoneButtonClicked
                      ? Color(0xFF2E3192)
                      : Color(0xFFF6F6F6),
                ),
                child: Text(
                  'Done',
                  style: TextStyle(
                    color: isDoneButtonClicked ? Colors.white : Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: onOngoingButtonPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isOngoingButtonClicked
                      ? Color(0xFF2E3192)
                      : Color(0xFFF6F6F6),
                ),
                child: Text(
                  'On Going',
                  style: TextStyle(
                    color: isOngoingButtonClicked ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ClassSchedBox(
                  className: "4-120",
                  classTime: "8:20 AM - 10:50 AM",
                  onPressed: () {
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
