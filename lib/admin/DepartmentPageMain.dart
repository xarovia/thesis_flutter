// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/DepartmentMaking.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';
import 'package:flutter_application_1/components/CustomSearchBar.dart';
import 'package:flutter_application_1/components/DepartmentContentBox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DepartmentScreen extends StatefulWidget {
  const DepartmentScreen({super.key});

  @override
  State<DepartmentScreen> createState() => _DepartmentScreenState();
}

class _DepartmentScreenState extends State<DepartmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Departments'),
        backgroundColor: Color(0xFF2E3192),
        foregroundColor: Color(0xFFFFFFFF),
      ),
      body: DepartmentList(),
      floatingActionButton: FloatingActionButton(
        //floating button call
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
                builder: (context) =>
                    DepartmentMakingScreen()), // Replace NewScreen with your actual screen widget
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class DepartmentList extends StatefulWidget {
  const DepartmentList({super.key});

  @override
  State<DepartmentList> createState() => _DepartmentListState();
}

class _DepartmentListState extends State<DepartmentList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          (CustomSearchBar()),
          Expanded(
            child: ListView(children: <Widget>[
              DepartmentContents(),
              const SizedBox(height: 10)
            ]),
          ),
        ],
      ),
    );
  }
}