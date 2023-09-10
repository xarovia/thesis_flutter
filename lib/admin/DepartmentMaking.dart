// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/AddingDepartmentContents.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';
import 'package:flutter_application_1/components/CustomSearchBar.dart';

class DepartmentMakingScreen extends StatefulWidget {
  const DepartmentMakingScreen({super.key});

  @override
  State<DepartmentMakingScreen> createState() => _DepartmentMakingScreenState();
}

class _DepartmentMakingScreenState extends State<DepartmentMakingScreen> {
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
              onTap: () {},
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
            Text('Department'),
          ],
        ),
        centerTitle: true,
      ),
      body: DepartmentScreen(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class DepartmentScreen extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<DepartmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          (CustomSearchBar()),
          Expanded(
            child: ListView(children: <Widget>[
              AddingDepartment(),
              const SizedBox(height: 10),
            ]),
          ),
        ],
      ),
    );
  }
}
