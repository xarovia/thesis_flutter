// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';

import 'package:flutter_application_1/components/CustomSearchBar.dart';
import 'package:flutter_application_1/components/EditContents.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditStudents extends StatefulWidget {
  const EditStudents({super.key});

  @override
  State<EditStudents> createState() => _EditStudentsState();
}

class _EditStudentsState extends State<EditStudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E3192),
        foregroundColor: Color(0xFFFFFFFF),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ClassMaking()));
              },
              child: const Text(
                'Save',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Student'),
          ],
        ),
        centerTitle: true,
      ),
      body: StudentClassScreen(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF3CC16B),
        shape: const CircleBorder(),
        elevation: 4.0,
        child: const Icon(
          FontAwesomeIcons.plus,
          color: Colors.white,
          size: 20,
        ),
        onPressed: () {
          // Handle FAB press
        },
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class StudentClassScreen extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<StudentClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          (CustomSearchBar()),
          Expanded(
            child: ListView(children: <Widget>[
              EditContents(),
              const SizedBox(height: 10),
              EditContents(),
              const SizedBox(height: 10),
            ]),
          ),
        ],
      ),
    );
  }
}
